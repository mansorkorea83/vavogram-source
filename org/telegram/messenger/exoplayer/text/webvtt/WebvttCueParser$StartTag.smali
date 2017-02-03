.class final Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCueParser$StartTag;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCueParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StartTag"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final position:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCueParser$StartTag;->position:I

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    return-void
.end method
