/*
  ==============================================================================

    This file was auto-generated!

    It contains the basic framework code for a JUCE plugin processor.

  ==============================================================================
*/

#include "PluginProcessor.h"
#include "PluginEditor.h"

//==============================================================================
BpmometerAudioProcessor::BpmometerAudioProcessor()
#ifndef JucePlugin_PreferredChannelConfigurations
     : AudioProcessor (BusesProperties()
                     #if ! JucePlugin_IsMidiEffect
                      #if ! JucePlugin_IsSynth
                       .withInput  ("Input",  AudioChannelSet::stereo(), true)
                      #endif
                       .withOutput ("Output", AudioChannelSet::stereo(), true)
                     #endif
                       )
#endif
{
}

BpmometerAudioProcessor::~BpmometerAudioProcessor()
{
}

//==============================================================================
const String BpmometerAudioProcessor::getName() const
{
    return JucePlugin_Name;
}

bool BpmometerAudioProcessor::acceptsMidi() const
{
   #if JucePlugin_WantsMidiInput
    return true;
   #else
    return false;
   #endif
}

bool BpmometerAudioProcessor::producesMidi() const
{
   #if JucePlugin_ProducesMidiOutput
    return true;
   #else
    return false;
   #endif
}

bool BpmometerAudioProcessor::isMidiEffect() const
{
   #if JucePlugin_IsMidiEffect
    return true;
   #else
    return false;
   #endif
}

double BpmometerAudioProcessor::getTailLengthSeconds() const
{
    return 0.0;
}

int BpmometerAudioProcessor::getNumPrograms()
{
    return 1;   // NB: some hosts don't cope very well if you tell them there are 0 programs,
                // so this should be at least 1, even if you're not really implementing programs.
}

int BpmometerAudioProcessor::getCurrentProgram()
{
    return 0;
}

void BpmometerAudioProcessor::setCurrentProgram (int index)
{
}

const String BpmometerAudioProcessor::getProgramName (int index)
{
    return {};
}

void BpmometerAudioProcessor::changeProgramName (int index, const String& newName)
{
}

//==============================================================================
void BpmometerAudioProcessor::prepareToPlay (double sampleRate, int samplesPerBlock)
{
    // Use this method as the place to do any pre-playback
    // initialisation that you need..
    beatCount = 0;
    
    tempBuffer.setSize(1, samplesPerBlock);
    
    frameCount = 0;
    
    previousBeatTime = 0;
}

void BpmometerAudioProcessor::releaseResources()
{
    // When playback stops, you can use this as an opportunity to free up any
    // spare memory, etc.
}

#ifndef JucePlugin_PreferredChannelConfigurations
bool BpmometerAudioProcessor::isBusesLayoutSupported (const BusesLayout& layouts) const
{
  #if JucePlugin_IsMidiEffect
    ignoreUnused (layouts);
    return true;
  #else
    // This is the place where you check if the layout is supported.
    // In this template code we only support mono or stereo.
    if (layouts.getMainOutputChannelSet() != AudioChannelSet::mono()
     && layouts.getMainOutputChannelSet() != AudioChannelSet::stereo())
        return false;

    // This checks if the input layout matches the output layout
   #if ! JucePlugin_IsSynth
    if (layouts.getMainOutputChannelSet() != layouts.getMainInputChannelSet())
        return false;
   #endif

    return true;
  #endif
}
#endif

void BpmometerAudioProcessor::processBlock (AudioBuffer<float>& buffer, MidiBuffer& midiMessages)
{
    ScopedNoDenormals noDenormals;
    auto totalNumInputChannels  = getTotalNumInputChannels();
    auto totalNumOutputChannels = getTotalNumOutputChannels();

    const auto numSamples = buffer.getNumSamples();
    //const auto startSample = buffer.get
//    for (auto i = totalNumInputChannels; i < totalNumOutputChannels; ++i)
//        buffer.clear (i, 0, buffer.getNumSamples());
    
    tempBuffer.clear();
    
     // Get a writeable pointer to the start of our temporary buffer:
    auto* tempBuffWriter = tempBuffer.getWritePointer (0, 0);
    
    for (int channel = 0; channel < totalNumInputChannels; ++channel)
    {
        //auto* channelData = buffer.getWritePointer (channel);

        auto* buffReader = buffer.getReadPointer(channel, 0);
        
        //Iterate samplesa nd use the buffReader to copy samples from our buffer to our temporary buffer
        for(int samp = 0; samp < numSamples; ++samp)
        {
            tempBuffWriter[samp] += static_cast<float> (buffReader[samp]);
            
            tempBuffWriter[samp] = (buffReader[samp]);
        }
        
        tracker.processAudioFrame(tempBuffer.getWritePointer(0));
        
        if (tracker.beatDueInCurrentFrame() == true)
        {
            beatCount ++;
            
            calculateInterval( frameCount );
            //DBG ( beatInterval );
            
        }
        
        frameCount ++;
        
    }
}

void BpmometerAudioProcessor::calculateInterval (long frame)
{
    //Timestamp of the current beat:
    float currentBeatTime = (float) tracker.getBeatTimeInSeconds(frame, myHop, sr);
    
    // Calculate difference in time between beats:
    beatInterval = (currentBeatTime - previousBeatTime);
    
    previousBeatTime = currentBeatTime;
    
}

void BpmometerAudioProcessor::calculateTempo ()
{
    // Divide 60 by the interval to get BPM:
    theTempo = 60.0f / beatInterval;
    
}

//==============================================================================
bool BpmometerAudioProcessor::hasEditor() const
{
    return true; // (change this to false if you choose to not supply an editor)
}

AudioProcessorEditor* BpmometerAudioProcessor::createEditor()
{
    return new BpmometerAudioProcessorEditor (*this);
}

//==============================================================================
void BpmometerAudioProcessor::getStateInformation (MemoryBlock& destData)
{
    // You should use this method to store your parameters in the memory block.
    // You could do that either as raw data, or use the XML or ValueTree classes
    // as intermediaries to make it easy to save and load complex data.
}

void BpmometerAudioProcessor::setStateInformation (const void* data, int sizeInBytes)
{
    // You should use this method to restore your parameters from this memory block,
    // whose contents will have been created by the getStateInformation() call.
}

//==============================================================================
// This creates new instances of the plugin..
AudioProcessor* JUCE_CALLTYPE createPluginFilter()
{
    return new BpmometerAudioProcessor();
}