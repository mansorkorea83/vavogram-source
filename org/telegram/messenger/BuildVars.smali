.class public Lorg/telegram/messenger/BuildVars;
.super Ljava/lang/Object;
.source "BuildVars.java"


# static fields
.field public static APP_HASH:Ljava/lang/String;

.field public static APP_ID:I

.field public static BING_SEARCH_KEY:Ljava/lang/String;

.field public static BUILD_VERSION:I

.field public static BUILD_VERSION_STRING:Ljava/lang/String;

.field public static DEBUG_VERSION:Z

.field public static FOURSQUARE_API_ID:Ljava/lang/String;

.field public static FOURSQUARE_API_KEY:Ljava/lang/String;

.field public static FOURSQUARE_API_VERSION:Ljava/lang/String;

.field public static GCM_SENDER_ID:Ljava/lang/String;

.field public static HOCKEY_APP_HASH:Ljava/lang/String;

.field public static HOCKEY_APP_HASH_DEBUG:Ljava/lang/String;

.field public static SEND_LOGS_EMAIL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    const/16 v0, 0x336

    sput v0, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION:I

    const-string/jumbo v0, "3.13"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION_STRING:Ljava/lang/String;

    const v0, 0xe1f5

    sput v0, Lorg/telegram/messenger/BuildVars;->APP_ID:I

    const-string/jumbo v0, "2e80b94de1cd77f6b7ef155a3edf7381"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->APP_HASH:Ljava/lang/String;

    const-string/jumbo v0, "4fc19be7de8e451b903a1fb8b987690b"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->HOCKEY_APP_HASH:Ljava/lang/String;

    const-string/jumbo v0, "4fc19be7de8e451b903a1fb8b987690b"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->HOCKEY_APP_HASH_DEBUG:Ljava/lang/String;

    const-string/jumbo v0, "760348033672"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->GCM_SENDER_ID:Ljava/lang/String;

    const-string/jumbo v0, "rojh_k@yahoo.com"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->SEND_LOGS_EMAIL:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lorg/telegram/messenger/BuildVars;->BING_SEARCH_KEY:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lorg/telegram/messenger/BuildVars;->FOURSQUARE_API_KEY:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lorg/telegram/messenger/BuildVars;->FOURSQUARE_API_ID:Ljava/lang/String;

    const-string/jumbo v0, "20150326"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->FOURSQUARE_API_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
