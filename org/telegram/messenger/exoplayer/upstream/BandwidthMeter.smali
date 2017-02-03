.class public interface abstract Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter;
.super Ljava/lang/Object;
.source "BandwidthMeter.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/upstream/TransferListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/upstream/BandwidthMeter$EventListener;
    }
.end annotation


# static fields
.field public static final NO_ESTIMATE:J = -0x1L


# virtual methods
.method public abstract getBitrateEstimate()J
.end method
