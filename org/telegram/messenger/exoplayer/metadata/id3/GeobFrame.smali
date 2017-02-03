.class public final Lorg/telegram/messenger/exoplayer/metadata/id3/GeobFrame;
.super Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Frame;
.source "GeobFrame.java"


# static fields
.field public static final ID:Ljava/lang/String; = "GEOB"


# instance fields
.field public final data:[B

.field public final description:Ljava/lang/String;

.field public final filename:Ljava/lang/String;

.field public final mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    const-string/jumbo v0, "GEOB"

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/metadata/id3/GeobFrame;->mimeType:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/metadata/id3/GeobFrame;->filename:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer/metadata/id3/GeobFrame;->description:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/messenger/exoplayer/metadata/id3/GeobFrame;->data:[B

    return-void
.end method
