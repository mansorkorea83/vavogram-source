.class public interface abstract Lorg/telegram/messenger/exoplayer/TimeRange;
.super Ljava/lang/Object;
.source "TimeRange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/TimeRange$DynamicTimeRange;,
        Lorg/telegram/messenger/exoplayer/TimeRange$StaticTimeRange;
    }
.end annotation


# virtual methods
.method public abstract getCurrentBoundsMs([J)[J
.end method

.method public abstract getCurrentBoundsUs([J)[J
.end method

.method public abstract isStatic()Z
.end method
