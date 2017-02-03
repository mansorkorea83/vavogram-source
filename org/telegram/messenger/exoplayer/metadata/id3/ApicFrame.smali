.class public final Lorg/telegram/messenger/exoplayer/metadata/id3/ApicFrame;
.super Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Frame;
.source "ApicFrame.java"


# static fields
.field public static final ID:Ljava/lang/String; = "APIC"


# instance fields
.field public final description:Ljava/lang/String;

.field public final mimeType:Ljava/lang/String;

.field public final pictureData:[B

.field public final pictureType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I[B)V
    .locals 1

    const-string/jumbo v0, "APIC"

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/metadata/id3/ApicFrame;->mimeType:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/metadata/id3/ApicFrame;->description:Ljava/lang/String;

    iput p3, p0, Lorg/telegram/messenger/exoplayer/metadata/id3/ApicFrame;->pictureType:I

    iput-object p4, p0, Lorg/telegram/messenger/exoplayer/metadata/id3/ApicFrame;->pictureData:[B

    return-void
.end method
