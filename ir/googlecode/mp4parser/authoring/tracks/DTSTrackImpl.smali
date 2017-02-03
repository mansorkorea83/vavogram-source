.class public Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "DTSTrackImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;
    }
.end annotation


# static fields
.field private static final BUFFER:I = 0x4000000


# instance fields
.field bcCoreBitRate:I

.field bcCoreChannelMask:I

.field bcCoreMaxSampleRate:I

.field bitrate:I

.field channelCount:I

.field channelMask:I

.field codecDelayAtMaxFs:I

.field coreBitRate:I

.field coreChannelMask:I

.field coreFramePayloadInBytes:I

.field coreMaxSampleRate:I

.field coreSubStreamPresent:Z

.field private dataOffset:I

.field private dataSource:Lcom/googlecode/mp4parser/DataSource;

.field ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

.field extAvgBitrate:I

.field extFramePayloadInBytes:I

.field extPeakBitrate:I

.field extSmoothBuffSize:I

.field extensionSubStreamPresent:Z

.field frameSize:I

.field isVBR:Z

.field private lang:Ljava/lang/String;

.field lbrCodingPresent:I

.field lsbTrimPercent:I

.field maxSampleRate:I

.field numExtSubStreams:I

.field numFramesTotal:I

.field numSamplesOrigAudioAtMaxFs:I

.field sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

.field private sampleDurations:[J

.field sampleSize:I

.field samplerate:I

.field private samples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation
.end field

.field samplesPerFrame:I

.field samplesPerFrameAtMaxFs:I

.field trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/DataSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->frameSize:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->dataOffset:I

    new-instance v0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    iput-boolean v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->isVBR:Z

    iput-boolean v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreSubStreamPresent:Z

    iput-boolean v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->extensionSubStreamPresent:Z

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->numExtSubStreams:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreMaxSampleRate:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreBitRate:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreChannelMask:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreFramePayloadInBytes:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->extAvgBitrate:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->extPeakBitrate:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->extSmoothBuffSize:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->extFramePayloadInBytes:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->maxSampleRate:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->lbrCodingPresent:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->numFramesTotal:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->samplesPerFrameAtMaxFs:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->numSamplesOrigAudioAtMaxFs:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->channelMask:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->codecDelayAtMaxFs:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->bcCoreMaxSampleRate:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->bcCoreBitRate:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->bcCoreChannelMask:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->lsbTrimPercent:I

    const-string/jumbo v0, "none"

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->type:Ljava/lang/String;

    const-string/jumbo v0, "eng"

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->lang:Ljava/lang/String;

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->parse()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/mp4parser/DataSource;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->frameSize:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->dataOffset:I

    new-instance v0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    iput-boolean v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->isVBR:Z

    iput-boolean v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreSubStreamPresent:Z

    iput-boolean v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->extensionSubStreamPresent:Z

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->numExtSubStreams:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreMaxSampleRate:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreBitRate:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreChannelMask:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreFramePayloadInBytes:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->extAvgBitrate:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->extPeakBitrate:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->extSmoothBuffSize:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->extFramePayloadInBytes:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->maxSampleRate:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->lbrCodingPresent:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->numFramesTotal:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->samplesPerFrameAtMaxFs:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->numSamplesOrigAudioAtMaxFs:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->channelMask:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->codecDelayAtMaxFs:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->bcCoreMaxSampleRate:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->bcCoreBitRate:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->bcCoreChannelMask:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->lsbTrimPercent:I

    const-string/jumbo v0, "none"

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->type:Ljava/lang/String;

    const-string/jumbo v0, "eng"

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->lang:Ljava/lang/String;

    iput-object p2, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->lang:Ljava/lang/String;

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->parse()V

    return-void
.end method

.method private generateSamples(Lcom/googlecode/mp4parser/DataSource;IJI)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/mp4parser/DataSource;",
            "IJI)",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;

    int-to-long v4, p2

    move-object v2, p0

    move-object v3, p1

    move-wide v6, p3

    move/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;Lcom/googlecode/mp4parser/DataSource;JJI)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$LookAhead;->findNextStart()Ljava/nio/ByteBuffer;

    move-result-object v10

    if-nez v10, :cond_0

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v3, "all samples found"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v9

    :cond_0
    move-object v0, v10

    new-instance v2, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$1;

    invoke-direct {v2, p0, v0}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl$1;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;Ljava/nio/ByteBuffer;)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getBitRate(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Unknown bitrate value"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const/16 v0, 0x20

    :goto_0
    return v0

    :pswitch_1
    const/16 v0, 0x38

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x40

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x60

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x70

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x80

    goto :goto_0

    :pswitch_6
    const/16 v0, 0xc0

    goto :goto_0

    :pswitch_7
    const/16 v0, 0xe0

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x100

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x140

    goto :goto_0

    :pswitch_a
    const/16 v0, 0x180

    goto :goto_0

    :pswitch_b
    const/16 v0, 0x1c0

    goto :goto_0

    :pswitch_c
    const/16 v0, 0x200

    goto :goto_0

    :pswitch_d
    const/16 v0, 0x240

    goto :goto_0

    :pswitch_e
    const/16 v0, 0x280

    goto :goto_0

    :pswitch_f
    const/16 v0, 0x300

    goto :goto_0

    :pswitch_10
    const/16 v0, 0x3c0

    goto :goto_0

    :pswitch_11
    const/16 v0, 0x400

    goto :goto_0

    :pswitch_12
    const/16 v0, 0x480

    goto :goto_0

    :pswitch_13
    const/16 v0, 0x500

    goto :goto_0

    :pswitch_14
    const/16 v0, 0x540

    goto :goto_0

    :pswitch_15
    const/16 v0, 0x580

    goto :goto_0

    :pswitch_16
    const/16 v0, 0x583

    goto :goto_0

    :pswitch_17
    const/16 v0, 0x5c0

    goto :goto_0

    :pswitch_18
    const/16 v0, 0x600

    goto :goto_0

    :pswitch_19
    const/4 v0, -0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method private getSampleRate(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Unknown Sample Rate"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    const/16 v0, 0x1f40

    :goto_0
    return v0

    :pswitch_2
    const/16 v0, 0x3e80

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x7d00

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x2b11

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x5622

    goto :goto_0

    :pswitch_6
    const v0, 0xac44

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x2ee0

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x5dc0

    goto :goto_0

    :pswitch_9
    const v0, 0xbb80

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private parse()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->readVariables()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :cond_0
    new-instance v1, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    new-instance v0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->type:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->channelCount:I

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setChannelCount(I)V

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->samplerate:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleRate(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setDataReferenceIndex(I)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleSize(I)V

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setCreationTime(Ljava/util/Date;)V

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setModificationTime(Ljava/util/Date;)V

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->lang:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setLanguage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->samplerate:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTimescale(J)V

    return-void
.end method

.method private parseAuprhdr(ILjava/nio/ByteBuffer;)Z
    .locals 8

    const/4 v7, 0x1

    const v6, 0xffff

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    shl-int/lit8 v4, v0, 0x10

    and-int v5, v1, v6

    or-int/2addr v4, v5

    iput v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->maxSampleRate:I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->numFramesTotal:I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    iput v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->samplesPerFrameAtMaxFs:I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    shl-int/lit8 v4, v0, 0x20

    and-int v5, v1, v6

    or-int/2addr v4, v5

    iput v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->numSamplesOrigAudioAtMaxFs:I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    iput v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->channelMask:I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    iput v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->codecDelayAtMaxFs:I

    const/16 v3, 0x15

    and-int/lit8 v4, v2, 0x3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    shl-int/lit8 v4, v0, 0x10

    and-int v5, v1, v6

    or-int/2addr v4, v5

    iput v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->bcCoreMaxSampleRate:I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    iput v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->bcCoreBitRate:I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    iput v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->bcCoreChannelMask:I

    add-int/lit8 v3, v3, 0x7

    :cond_0
    and-int/lit8 v4, v2, 0x4

    if-lez v4, :cond_1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    iput v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->lsbTrimPercent:I

    add-int/lit8 v3, v3, 0x1

    :cond_1
    and-int/lit8 v4, v2, 0x8

    if-lez v4, :cond_2

    iput v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->lbrCodingPresent:I

    :cond_2
    :goto_0
    if-lt v3, p1, :cond_3

    return v7

    :cond_3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private parseCoressmd(ILjava/nio/ByteBuffer;)Z
    .locals 5

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    shl-int/lit8 v3, v0, 0x10

    const v4, 0xffff

    and-int/2addr v4, v1

    or-int/2addr v3, v4

    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreMaxSampleRate:I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreBitRate:I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreChannelMask:I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreFramePayloadInBytes:I

    const/16 v2, 0xb

    :goto_0
    if-lt v2, p1, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private parseDtshdhdr(ILjava/nio/ByteBuffer;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->numExtSubStreams:I

    and-int/lit8 v2, v0, 0x1

    if-ne v2, v4, :cond_0

    iput-boolean v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->isVBR:Z

    :cond_0
    and-int/lit8 v2, v0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    iput-boolean v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreSubStreamPresent:Z

    :cond_1
    and-int/lit8 v2, v0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    iput-boolean v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->extensionSubStreamPresent:Z

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->numExtSubStreams:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->numExtSubStreams:I

    :goto_0
    const/16 v1, 0xe

    :goto_1
    if-lt v1, p1, :cond_3

    return-void

    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->numExtSubStreams:I

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private parseExtssmd(ILjava/nio/ByteBuffer;)Z
    .locals 6

    const v5, 0xffff

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    shl-int/lit8 v3, v0, 0x10

    and-int v4, v1, v5

    or-int/2addr v3, v4

    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->extAvgBitrate:I

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->isVBR:Z

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    shl-int/lit8 v3, v0, 0x10

    and-int v4, v1, v5

    or-int/2addr v3, v4

    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->extPeakBitrate:I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->extSmoothBuffSize:I

    add-int/lit8 v2, v2, 0x5

    :goto_0
    if-lt v2, p1, :cond_1

    const/4 v3, 0x1

    return v3

    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->extFramePayloadInBytes:I

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private readVariables()Z
    .locals 52
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    const-wide/16 v4, 0x0

    const-wide/16 v50, 0x61a8

    move-wide/from16 v0, v50

    invoke-interface {v3, v4, v5, v0, v1}, Lcom/googlecode/mp4parser/DataSource;->map(JJ)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v46

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v47

    const v3, 0x44545348

    move/from16 v0, v46

    if-ne v0, v3, :cond_0

    const v3, 0x44484452

    move/from16 v0, v47

    if-eq v0, v3, :cond_3

    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "data does not start with \'DTSHDHDR\' as required for a DTS-HD file"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v43, v0

    const v3, 0x44545348

    move/from16 v0, v46

    if-ne v0, v3, :cond_6

    const v3, 0x44484452

    move/from16 v0, v47

    if-ne v0, v3, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-direct {v0, v1, v9}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->parseDtshdhdr(ILjava/nio/ByteBuffer;)V

    :cond_2
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v46

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v47

    :cond_3
    const v3, 0x5354524d

    move/from16 v0, v46

    if-ne v0, v3, :cond_4

    const v3, 0x44415441

    move/from16 v0, v47

    if-eq v0, v3, :cond_5

    :cond_4
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/16 v4, 0x64

    if-gt v3, v4, :cond_1

    :cond_5
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->dataOffset:I

    const/4 v2, -0x1

    const/16 v17, 0x0

    const/16 v16, 0x0

    const/4 v8, -0x1

    const/16 v20, -0x1

    const/16 v25, 0x0

    const/16 v23, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v19, 0x0

    const/16 v26, 0x0

    const/16 v18, 0x0

    const/4 v15, 0x0

    :goto_0
    if-eqz v15, :cond_a

    const/16 v27, -0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->samplesPerFrame:I

    sparse-switch v3, :sswitch_data_0

    :goto_1
    const/4 v3, -0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_23

    const/4 v3, 0x0

    :goto_2
    return v3

    :cond_6
    const v3, 0x434f5245

    move/from16 v0, v46

    if-ne v0, v3, :cond_7

    const v3, 0x53534d44

    move/from16 v0, v47

    if-ne v0, v3, :cond_7

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-direct {v0, v1, v9}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->parseCoressmd(ILjava/nio/ByteBuffer;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_7
    const v3, 0x41555052

    move/from16 v0, v46

    if-ne v0, v3, :cond_8

    const v3, 0x2d484452

    move/from16 v0, v47

    if-ne v0, v3, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-direct {v0, v1, v9}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->parseAuprhdr(ILjava/nio/ByteBuffer;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_8
    const v3, 0x45585453

    move/from16 v0, v46

    if-ne v0, v3, :cond_9

    const v3, 0x535f4d44

    move/from16 v0, v47

    if-ne v0, v3, :cond_9

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-direct {v0, v1, v9}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->parseExtssmd(ILjava/nio/ByteBuffer;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_9
    const/16 v32, 0x0

    :goto_3
    move/from16 v0, v32

    move/from16 v1, v43

    if-ge v0, v1, :cond_2

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    add-int/lit8 v32, v32, 0x1

    goto :goto_3

    :cond_a
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v38

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v45

    const v3, 0x7ffe8001

    move/from16 v0, v45

    if-ne v0, v3, :cond_10

    const/4 v3, 0x1

    if-ne v8, v3, :cond_b

    const/4 v15, 0x1

    goto/16 :goto_0

    :cond_b
    const/4 v8, 0x1

    new-instance v11, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    invoke-direct {v11, v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v30

    const/4 v3, 0x5

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v42

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v13

    const/4 v3, 0x1

    move/from16 v0, v30

    if-ne v0, v3, :cond_c

    const/16 v3, 0x1f

    move/from16 v0, v42

    if-ne v0, v3, :cond_c

    if-eqz v13, :cond_d

    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_d
    const/4 v3, 0x7

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v33

    add-int/lit8 v3, v33, 0x1

    mul-int/lit8 v3, v3, 0x20

    move-object/from16 v0, p0

    iput v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->samplesPerFrame:I

    const/16 v3, 0xe

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v29

    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->frameSize:I

    add-int/lit8 v4, v29, 0x1

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->frameSize:I

    const/4 v3, 0x6

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v41

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->getSampleRate(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->samplerate:I

    const/4 v3, 0x5

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v40

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->getBitRate(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->bitrate:I

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v28

    if-eqz v28, :cond_e

    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_e
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    const/4 v3, 0x3

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v17

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v16

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    const/4 v3, 0x2

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    const/4 v3, 0x1

    if-ne v13, v3, :cond_f

    const/16 v3, 0x10

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    :cond_f
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    const/4 v3, 0x4

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v48

    const/4 v3, 0x2

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    const/4 v3, 0x3

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v39

    packed-switch v39, :pswitch_data_0

    :pswitch_0
    const/4 v3, 0x0

    goto/16 :goto_2

    :pswitch_1
    const/16 v3, 0x10

    move-object/from16 v0, p0

    iput v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->sampleSize:I

    :goto_4
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    const/4 v14, 0x0

    packed-switch v48, :pswitch_data_1

    const/4 v3, 0x4

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    :goto_5
    add-int v3, v38, v29

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v9, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    :pswitch_2
    const/16 v3, 0x14

    move-object/from16 v0, p0

    iput v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->sampleSize:I

    goto :goto_4

    :pswitch_3
    const/16 v3, 0x18

    move-object/from16 v0, p0

    iput v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->sampleSize:I

    goto :goto_4

    :pswitch_4
    const/4 v3, 0x4

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    add-int/lit8 v3, v14, 0x10

    neg-int v3, v3

    goto :goto_5

    :pswitch_5
    const/4 v3, 0x4

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v14

    neg-int v3, v14

    goto :goto_5

    :cond_10
    const v3, 0x64582025

    move/from16 v0, v45

    if-ne v0, v3, :cond_22

    const/4 v3, -0x1

    if-ne v8, v3, :cond_11

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->samplesPerFrameAtMaxFs:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->samplesPerFrame:I

    :cond_11
    const/16 v20, 0x1

    new-instance v11, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    invoke-direct {v11, v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    const/16 v3, 0x8

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    const/4 v3, 0x2

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v31

    const/16 v35, 0xc

    const/16 v34, 0x14

    if-nez v31, :cond_12

    const/16 v35, 0x8

    const/16 v34, 0x10

    :cond_12
    move/from16 v0, v35

    invoke-virtual {v11, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v3

    add-int/lit8 v37, v3, 0x1

    move/from16 v0, v34

    invoke-virtual {v11, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v3

    add-int/lit8 v36, v3, 0x1

    add-int v3, v38, v37

    invoke-virtual {v9, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v21

    const v3, 0x5a5a5a5a

    move/from16 v0, v21

    if-ne v0, v3, :cond_16

    const/4 v3, 0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_13

    const/4 v15, 0x1

    :cond_13
    const/16 v25, 0x1

    :cond_14
    :goto_6
    if-nez v15, :cond_15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->frameSize:I

    add-int v3, v3, v36

    move-object/from16 v0, p0

    iput v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->frameSize:I

    :cond_15
    add-int v3, v38, v36

    invoke-virtual {v9, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    :cond_16
    const v3, 0x47004a03

    move/from16 v0, v21

    if-ne v0, v3, :cond_18

    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_17

    const/4 v15, 0x1

    :cond_17
    const/16 v23, 0x1

    goto :goto_6

    :cond_18
    const v3, 0x1d95f262

    move/from16 v0, v21

    if-ne v0, v3, :cond_1a

    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_19

    const/4 v15, 0x1

    :cond_19
    const/16 v22, 0x1

    goto :goto_6

    :cond_1a
    const v3, 0x655e315e

    move/from16 v0, v21

    if-ne v0, v3, :cond_1c

    const/4 v3, 0x1

    move/from16 v0, v24

    if-ne v0, v3, :cond_1b

    const/4 v15, 0x1

    :cond_1b
    const/16 v24, 0x1

    goto :goto_6

    :cond_1c
    const v3, 0xa801921

    move/from16 v0, v21

    if-ne v0, v3, :cond_1e

    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_1d

    const/4 v15, 0x1

    :cond_1d
    const/16 v19, 0x1

    goto :goto_6

    :cond_1e
    const v3, 0x41a29547

    move/from16 v0, v21

    if-ne v0, v3, :cond_20

    const/4 v3, 0x1

    move/from16 v0, v26

    if-ne v0, v3, :cond_1f

    const/4 v15, 0x1

    :cond_1f
    const/16 v26, 0x1

    goto :goto_6

    :cond_20
    const v3, 0x2b09261

    move/from16 v0, v21

    if-ne v0, v3, :cond_14

    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_21

    const/4 v15, 0x1

    :cond_21
    const/16 v18, 0x1

    goto :goto_6

    :cond_22
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "No DTS_SYNCWORD_* found at "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_0
    const/16 v27, 0x0

    goto/16 :goto_1

    :sswitch_1
    const/16 v27, 0x1

    goto/16 :goto_1

    :sswitch_2
    const/16 v27, 0x2

    goto/16 :goto_1

    :sswitch_3
    const/16 v27, 0x3

    goto/16 :goto_1

    :cond_23
    const/16 v12, 0x1f

    packed-switch v2, :pswitch_data_2

    :goto_7
    :pswitch_6
    const/16 v44, 0x0

    if-nez v8, :cond_2c

    const/4 v3, 0x1

    move/from16 v0, v26

    if-ne v0, v3, :cond_28

    if-nez v18, :cond_27

    const/16 v44, 0x11

    const-string/jumbo v3, "dtsl"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->type:Ljava/lang/String;

    :cond_24
    :goto_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->maxSampleRate:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->samplerate:I

    const/16 v3, 0x18

    move-object/from16 v0, p0

    iput v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->sampleSize:I

    :cond_25
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->maxSampleRate:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->setDTSSamplingFrequency(J)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->isVBR:Z

    if-eqz v3, :cond_3a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreBitRate:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->extPeakBitrate:I

    add-int/2addr v4, v5

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->setMaxBitRate(J)V

    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreBitRate:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->extAvgBitrate:I

    add-int/2addr v4, v5

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->setAvgBitRate(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->sampleSize:I

    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->setPcmSampleDepth(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->setFrameDuration(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    move/from16 v0, v44

    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->setStreamConstruction(I)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreChannelMask:I

    and-int/lit8 v3, v3, 0x8

    if-gtz v3, :cond_26

    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreChannelMask:I

    and-int/lit16 v3, v3, 0x1000

    if-lez v3, :cond_3b

    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->setCoreLFEPresent(I)V

    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    invoke-virtual {v3, v12}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->setCoreLayout(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreFramePayloadInBytes:I

    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->setCoreSize(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->setStereoDownmix(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->setRepresentationType(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->channelMask:I

    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->setChannelLayout(I)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreMaxSampleRate:I

    if-lez v3, :cond_3c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->extAvgBitrate:I

    if-lez v3, :cond_3c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->setMultiAssetFlag(I)V

    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->lbrCodingPresent:I

    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->setLBRDurationMod(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->setReservedBoxPresent(I)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->channelCount:I

    const/4 v10, 0x0

    :goto_d
    const/16 v3, 0x10

    if-lt v10, v3, :cond_3d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->dataOffset:I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->generateSamples(Lcom/googlecode/mp4parser/DataSource;IJI)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->samples:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->samples:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [J

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->sampleDurations:[J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->sampleDurations:[J

    move-object/from16 v0, p0

    iget v4, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->samplesPerFrame:I

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->fill([JJ)V

    const/4 v3, 0x1

    goto/16 :goto_2

    :pswitch_7
    move v12, v2

    goto/16 :goto_7

    :cond_27
    const/16 v44, 0x15

    const-string/jumbo v3, "dtsh"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->type:Ljava/lang/String;

    goto/16 :goto_8

    :cond_28
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_29

    const/16 v44, 0x12

    const-string/jumbo v3, "dtse"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->type:Ljava/lang/String;

    goto/16 :goto_8

    :cond_29
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_24

    const-string/jumbo v3, "dtsh"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->type:Ljava/lang/String;

    if-nez v23, :cond_2a

    if-nez v26, :cond_2a

    const/16 v44, 0x13

    goto/16 :goto_8

    :cond_2a
    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_2b

    if-nez v26, :cond_2b

    const/16 v44, 0x14

    goto/16 :goto_8

    :cond_2b
    if-nez v23, :cond_24

    const/4 v3, 0x1

    move/from16 v0, v26

    if-ne v0, v3, :cond_24

    const/16 v44, 0x15

    goto/16 :goto_8

    :cond_2c
    const/4 v3, 0x1

    move/from16 v0, v20

    if-ge v0, v3, :cond_2e

    if-lez v16, :cond_2d

    sparse-switch v17, :sswitch_data_1

    const/16 v44, 0x0

    const-string/jumbo v3, "dtsh"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->type:Ljava/lang/String;

    goto/16 :goto_9

    :sswitch_4
    const/16 v44, 0x2

    const-string/jumbo v3, "dtsc"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->type:Ljava/lang/String;

    goto/16 :goto_9

    :sswitch_5
    const/16 v44, 0x4

    const-string/jumbo v3, "dtsc"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->type:Ljava/lang/String;

    goto/16 :goto_9

    :sswitch_6
    const/16 v44, 0x3

    const-string/jumbo v3, "dtsh"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->type:Ljava/lang/String;

    goto/16 :goto_9

    :cond_2d
    const/16 v44, 0x1

    const-string/jumbo v3, "dtsc"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->type:Ljava/lang/String;

    goto/16 :goto_9

    :cond_2e
    const-string/jumbo v3, "dtsh"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->type:Ljava/lang/String;

    if-nez v16, :cond_34

    if-nez v18, :cond_2f

    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_2f

    if-nez v22, :cond_2f

    if-nez v24, :cond_2f

    if-nez v26, :cond_2f

    if-nez v19, :cond_2f

    const/16 v44, 0x5

    goto/16 :goto_9

    :cond_2f
    if-nez v18, :cond_30

    if-nez v23, :cond_30

    if-nez v22, :cond_30

    const/4 v3, 0x1

    move/from16 v0, v24

    if-ne v0, v3, :cond_30

    if-nez v26, :cond_30

    if-nez v19, :cond_30

    const/16 v44, 0x6

    goto/16 :goto_9

    :cond_30
    if-nez v18, :cond_31

    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_31

    if-nez v22, :cond_31

    const/4 v3, 0x1

    move/from16 v0, v24

    if-ne v0, v3, :cond_31

    if-nez v26, :cond_31

    if-nez v19, :cond_31

    const/16 v44, 0x9

    goto/16 :goto_9

    :cond_31
    if-nez v18, :cond_32

    if-nez v23, :cond_32

    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_32

    if-nez v24, :cond_32

    if-nez v26, :cond_32

    if-nez v19, :cond_32

    const/16 v44, 0xa

    goto/16 :goto_9

    :cond_32
    if-nez v18, :cond_33

    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_33

    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_33

    if-nez v24, :cond_33

    if-nez v26, :cond_33

    if-nez v19, :cond_33

    const/16 v44, 0xd

    goto/16 :goto_9

    :cond_33
    if-nez v18, :cond_25

    if-nez v23, :cond_25

    if-nez v22, :cond_25

    if-nez v24, :cond_25

    const/4 v3, 0x1

    move/from16 v0, v26

    if-ne v0, v3, :cond_25

    if-nez v19, :cond_25

    const/16 v44, 0xe

    goto/16 :goto_9

    :cond_34
    if-nez v17, :cond_35

    if-nez v18, :cond_35

    if-nez v23, :cond_35

    if-nez v22, :cond_35

    const/4 v3, 0x1

    move/from16 v0, v24

    if-ne v0, v3, :cond_35

    if-nez v26, :cond_35

    if-nez v19, :cond_35

    const/16 v44, 0x7

    goto/16 :goto_9

    :cond_35
    const/4 v3, 0x6

    move/from16 v0, v17

    if-ne v0, v3, :cond_36

    if-nez v18, :cond_36

    if-nez v23, :cond_36

    if-nez v22, :cond_36

    const/4 v3, 0x1

    move/from16 v0, v24

    if-ne v0, v3, :cond_36

    if-nez v26, :cond_36

    if-nez v19, :cond_36

    const/16 v44, 0x8

    goto/16 :goto_9

    :cond_36
    if-nez v17, :cond_37

    if-nez v18, :cond_37

    if-nez v23, :cond_37

    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_37

    if-nez v24, :cond_37

    if-nez v26, :cond_37

    if-nez v19, :cond_37

    const/16 v44, 0xb

    goto/16 :goto_9

    :cond_37
    const/4 v3, 0x6

    move/from16 v0, v17

    if-ne v0, v3, :cond_38

    if-nez v18, :cond_38

    if-nez v23, :cond_38

    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_38

    if-nez v24, :cond_38

    if-nez v26, :cond_38

    if-nez v19, :cond_38

    const/16 v44, 0xc

    goto/16 :goto_9

    :cond_38
    if-nez v17, :cond_39

    if-nez v18, :cond_39

    if-nez v23, :cond_39

    if-nez v22, :cond_39

    if-nez v24, :cond_39

    const/4 v3, 0x1

    move/from16 v0, v26

    if-ne v0, v3, :cond_39

    if-nez v19, :cond_39

    const/16 v44, 0xf

    goto/16 :goto_9

    :cond_39
    const/4 v3, 0x2

    move/from16 v0, v17

    if-ne v0, v3, :cond_25

    if-nez v18, :cond_25

    if-nez v23, :cond_25

    if-nez v22, :cond_25

    if-nez v24, :cond_25

    const/4 v3, 0x1

    move/from16 v0, v26

    if-ne v0, v3, :cond_25

    if-nez v19, :cond_25

    const/16 v44, 0x10

    goto/16 :goto_9

    :cond_3a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->coreBitRate:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->extAvgBitrate:I

    add-int/2addr v4, v5

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->setMaxBitRate(J)V

    goto/16 :goto_a

    :cond_3b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->setCoreLFEPresent(I)V

    goto/16 :goto_b

    :cond_3c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->ddts:Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->setMultiAssetFlag(I)V

    goto/16 :goto_c

    :cond_3d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->channelMask:I

    shr-int/2addr v3, v10

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3e

    packed-switch v10, :pswitch_data_3

    :pswitch_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->channelCount:I

    add-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->channelCount:I

    :cond_3e
    :goto_e
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_d

    :pswitch_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->channelCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->channelCount:I

    goto :goto_e

    :sswitch_data_0
    .sparse-switch
        0x200 -> :sswitch_0
        0x400 -> :sswitch_1
        0x800 -> :sswitch_2
        0x1000 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0x2 -> :sswitch_5
        0x6 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/DataSource;->close()V

    return-void
.end method

.method public getCompositionTimeEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "soun"

    return-object v0
.end method

.method public getSampleDependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    return-object v0
.end method

.method public getSampleDurations()[J
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->sampleDurations:[J

    return-object v0
.end method

.method public getSamples()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->samples:Ljava/util/List;

    return-object v0
.end method

.method public getSyncSamples()[J
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/DTSTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    return-object v0
.end method
