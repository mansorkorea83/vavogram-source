.class public Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;
.super Ljava/lang/Object;
.source "SmoothStreamingManifest.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/chunk/FormatWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackElement"
.end annotation


# instance fields
.field public final csd:[[B

.field public final format:Lorg/telegram/messenger/exoplayer/chunk/Format;


# direct methods
.method public constructor <init>(IILjava/lang/String;[[BIIIILjava/lang/String;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;->csd:[[B

    new-instance v0, Lorg/telegram/messenger/exoplayer/chunk/Format;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v5, -0x4080

    move-object v2, p3

    move v3, p5

    move/from16 v4, p6

    move/from16 v6, p8

    move/from16 v7, p7

    move v8, p2

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lorg/telegram/messenger/exoplayer/chunk/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    return-void
.end method


# virtual methods
.method public getFormat()Lorg/telegram/messenger/exoplayer/chunk/Format;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;->format:Lorg/telegram/messenger/exoplayer/chunk/Format;

    return-object v0
.end method
