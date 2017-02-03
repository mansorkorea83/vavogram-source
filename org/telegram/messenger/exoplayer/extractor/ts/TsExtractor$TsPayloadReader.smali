.class abstract Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;
.super Ljava/lang/Object;
.source "TsExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TsPayloadReader"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract consume(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;ZLorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;)V
.end method

.method public abstract seek()V
.end method
