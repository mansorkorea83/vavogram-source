.class public final Lorg/telegram/messenger/exoplayer/util/VerboseLogUtil;
.super Ljava/lang/Object;
.source "VerboseLogUtil.java"


# static fields
.field private static volatile enableAllTags:Z

.field private static volatile enabledTags:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areAllTagsEnabled()Z
    .locals 1

    sget-boolean v0, Lorg/telegram/messenger/exoplayer/util/VerboseLogUtil;->enableAllTags:Z

    return v0
.end method

.method public static isTagEnabled(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-boolean v4, Lorg/telegram/messenger/exoplayer/util/VerboseLogUtil;->enableAllTags:Z

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    sget-object v1, Lorg/telegram/messenger/exoplayer/util/VerboseLogUtil;->enabledTags:[Ljava/lang/String;

    if-eqz v1, :cond_2

    array-length v4, v1

    if-nez v4, :cond_3

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_4

    aget-object v4, v1, v0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method public static setEnableAllTags(Z)V
    .locals 0

    sput-boolean p0, Lorg/telegram/messenger/exoplayer/util/VerboseLogUtil;->enableAllTags:Z

    return-void
.end method

.method public static varargs setEnabledTags([Ljava/lang/String;)V
    .locals 1

    sput-object p0, Lorg/telegram/messenger/exoplayer/util/VerboseLogUtil;->enabledTags:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lorg/telegram/messenger/exoplayer/util/VerboseLogUtil;->enableAllTags:Z

    return-void
.end method
