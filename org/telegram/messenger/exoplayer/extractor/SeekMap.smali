.class public interface abstract Lorg/telegram/messenger/exoplayer/extractor/SeekMap;
.super Ljava/lang/Object;
.source "SeekMap.java"


# static fields
.field public static final UNSEEKABLE:Lorg/telegram/messenger/exoplayer/extractor/SeekMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/SeekMap$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/extractor/SeekMap$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer/extractor/SeekMap;->UNSEEKABLE:Lorg/telegram/messenger/exoplayer/extractor/SeekMap;

    return-void
.end method


# virtual methods
.method public abstract getPosition(J)J
.end method

.method public abstract isSeekable()Z
.end method
