.class public final Lorg/telegram/messenger/exoplayer/CryptoInfo;
.super Ljava/lang/Object;
.source "CryptoInfo.java"


# instance fields
.field private final frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

.field public iv:[B

.field public key:[B

.field public mode:I

.field public numBytesOfClearData:[I

.field public numBytesOfEncryptedData:[I

.field public numSubSamples:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/CryptoInfo;->newFrameworkCryptoInfoV16()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private newFrameworkCryptoInfoV16()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    return-object v0
.end method

.method private updateFrameworkCryptoInfoV16()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget v1, p0, Lorg/telegram/messenger/exoplayer/CryptoInfo;->numSubSamples:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/CryptoInfo;->numBytesOfClearData:[I

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/CryptoInfo;->numBytesOfEncryptedData:[I

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/CryptoInfo;->key:[B

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer/CryptoInfo;->iv:[B

    iget v6, p0, Lorg/telegram/messenger/exoplayer/CryptoInfo;->mode:I

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec$CryptoInfo;->set(I[I[I[B[BI)V

    return-void
.end method


# virtual methods
.method public getFrameworkCryptoInfoV16()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    return-object v0
.end method

.method public set(I[I[I[B[BI)V
    .locals 2

    iput p1, p0, Lorg/telegram/messenger/exoplayer/CryptoInfo;->numSubSamples:I

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/CryptoInfo;->numBytesOfClearData:[I

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer/CryptoInfo;->numBytesOfEncryptedData:[I

    iput-object p4, p0, Lorg/telegram/messenger/exoplayer/CryptoInfo;->key:[B

    iput-object p5, p0, Lorg/telegram/messenger/exoplayer/CryptoInfo;->iv:[B

    iput p6, p0, Lorg/telegram/messenger/exoplayer/CryptoInfo;->mode:I

    sget v0, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/CryptoInfo;->updateFrameworkCryptoInfoV16()V

    :cond_0
    return-void
.end method

.method public setFromExtractorV16(Landroid/media/MediaExtractor;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->getSampleCryptoInfo(Landroid/media/MediaCodec$CryptoInfo;)Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget v0, v0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer/CryptoInfo;->numSubSamples:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v0, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/CryptoInfo;->numBytesOfClearData:[I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v0, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/CryptoInfo;->numBytesOfEncryptedData:[I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v0, v0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/CryptoInfo;->key:[B

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v0, v0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/CryptoInfo;->iv:[B

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/CryptoInfo;->frameworkCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget v0, v0, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer/CryptoInfo;->mode:I

    return-void
.end method
