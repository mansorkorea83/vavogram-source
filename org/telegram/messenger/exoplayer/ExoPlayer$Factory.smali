.class public final Lorg/telegram/messenger/exoplayer/ExoPlayer$Factory;
.super Ljava/lang/Object;
.source "ExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/ExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# static fields
.field public static final DEFAULT_MIN_BUFFER_MS:I = 0x9c4

.field public static final DEFAULT_MIN_REBUFFER_MS:I = 0x1388


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lorg/telegram/messenger/exoplayer/ExoPlayer;
    .locals 3

    new-instance v0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;

    const/16 v1, 0x9c4

    const/16 v2, 0x1388

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;-><init>(III)V

    return-object v0
.end method

.method public static newInstance(III)Lorg/telegram/messenger/exoplayer/ExoPlayer;
    .locals 1

    new-instance v0, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/messenger/exoplayer/ExoPlayerImpl;-><init>(III)V

    return-object v0
.end method
