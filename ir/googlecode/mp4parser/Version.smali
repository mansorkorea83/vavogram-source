.class public Lcom/googlecode/mp4parser/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field public static final VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v3, Lcom/googlecode/mp4parser/Version;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v3

    sput-object v3, Lcom/googlecode/mp4parser/Version;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/io/LineNumberReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-class v4, Lcom/googlecode/mp4parser/Version;

    const-string/jumbo v5, "/version.txt"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    sput-object v2, Lcom/googlecode/mp4parser/Version;->VERSION:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    sget-object v3, Lcom/googlecode/mp4parser/Version;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const-string/jumbo v2, "unknown"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
