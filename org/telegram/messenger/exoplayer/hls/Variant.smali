.class public final Lorg/telegram/messenger/exoplayer/hls/Variant;
.super Ljava/lang/Object;
.source "Variant.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/chunk/FormatWrapper;


# instance fields
.field public final format:Lorg/telegram/messenger/exoplayer/chunk/Format;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer/chunk/Format;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/hls/Variant;->url:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/hls/Variant;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    return-void
.end method


# virtual methods
.method public getFormat()Lorg/telegram/messenger/exoplayer/chunk/Format;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/Variant;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    return-object v0
.end method
