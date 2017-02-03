.class public Lorg/telegram/messenger/exoplayer/util/extensions/InputBuffer;
.super Lorg/telegram/messenger/exoplayer/util/extensions/Buffer;
.source "InputBuffer.java"


# instance fields
.field public final sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/util/extensions/Buffer;-><init>()V

    new-instance v0, Lorg/telegram/messenger/exoplayer/SampleHolder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/SampleHolder;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/util/extensions/InputBuffer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/messenger/exoplayer/util/extensions/Buffer;->reset()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/util/extensions/InputBuffer;->sampleHolder:Lorg/telegram/messenger/exoplayer/SampleHolder;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/SampleHolder;->clearData()V

    return-void
.end method
