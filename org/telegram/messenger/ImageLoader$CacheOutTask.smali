.class Lorg/telegram/messenger/ImageLoader$CacheOutTask;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheOutTask"
.end annotation


# instance fields
.field private cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

.field private isCancelled:Z

.field private runningThread:Ljava/lang/Thread;

.field private final sync:Ljava/lang/Object;

.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/ImageLoader$CacheOutTask;)Lorg/telegram/messenger/ImageLoader$CacheImage;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    return-object v0
.end method

.method private onPostExecute(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;-><init>(Lorg/telegram/messenger/ImageLoader$CacheOutTask;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->runningThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->runningThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 46

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->runningThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    if-eqz v5, :cond_0

    monitor-exit v6

    :goto_0
    return-void

    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-boolean v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->animatedFile:Z

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    if-eqz v5, :cond_1

    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :catchall_1
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    :cond_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    new-instance v28, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v6, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v7, "d"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, v28

    invoke-direct {v0, v6, v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;Z)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/BitmapDrawable;)V

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v44, 0x0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-ge v5, v6, :cond_5

    const/16 v39, 0x0

    :try_start_4
    new-instance v40, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    move-object/from16 v0, v40

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-boolean v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->thumb:Z

    if-eqz v5, :cond_8

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1200()[B

    move-result-object v20

    :goto_2
    const/4 v5, 0x0

    move-object/from16 v0, v20

    array-length v6, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5, v6}, Ljava/io/RandomAccessFile;->readFully([BII)V

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v43

    const-string/jumbo v5, "riff"

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "webp"

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v44, 0x1

    :cond_4
    invoke-virtual/range {v40 .. v40}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    if-eqz v40, :cond_5

    :try_start_6
    invoke-virtual/range {v40 .. v40}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-boolean v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->thumb:Z

    if-eqz v5, :cond_1d

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v6, "b2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v16, 0x3

    :cond_6
    :goto_4
    :try_start_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    #setter for: Lorg/telegram/messenger/ImageLoader;->lastCacheOutTime:J
    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/ImageLoader;->access$1402(Lorg/telegram/messenger/ImageLoader;J)J

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v6
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    :try_start_8
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    if-eqz v5, :cond_c

    monitor-exit v6

    goto/16 :goto_0

    :catchall_2
    move-exception v5

    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v5
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    :catch_0
    move-exception v25

    move-object/from16 v4, v31

    :goto_5
    const-string/jumbo v5, "tmessages"

    move-object/from16 v0, v25

    invoke-static {v5, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_6
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    if-eqz v4, :cond_3d

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/BitmapDrawable;)V

    goto/16 :goto_0

    :cond_8
    :try_start_a
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1300()[B
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    move-result-object v20

    goto/16 :goto_2

    :catch_1
    move-exception v25

    const-string/jumbo v5, "tmessages"

    move-object/from16 v0, v25

    invoke-static {v5, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_2
    move-exception v25

    :goto_8
    :try_start_b
    const-string/jumbo v5, "tmessages"

    move-object/from16 v0, v25

    invoke-static {v5, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v39, :cond_5

    :try_start_c
    invoke-virtual/range {v39 .. v39}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_3

    :catch_3
    move-exception v25

    const-string/jumbo v5, "tmessages"

    move-object/from16 v0, v25

    invoke-static {v5, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :catchall_3
    move-exception v5

    :goto_9
    if-eqz v39, :cond_9

    :try_start_d
    invoke-virtual/range {v39 .. v39}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    :cond_9
    :goto_a
    throw v5

    :catch_4
    move-exception v25

    const-string/jumbo v6, "tmessages"

    move-object/from16 v0, v25

    invoke-static {v6, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v6, "b1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/16 v16, 0x2

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v6, "b"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v16, 0x1

    goto/16 :goto_4

    :cond_c
    :try_start_e
    monitor-exit v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    new-instance v36, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v36 .. v36}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    move-object/from16 v0, v36

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_d

    const/4 v5, 0x1

    move-object/from16 v0, v36

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    :cond_d
    if-eqz v44, :cond_10

    new-instance v27, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v27}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v6, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v19

    new-instance v18, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    move-object/from16 v0, v18

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v5, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v5, v0, v6, v1, v7}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/Bitmaps;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0

    move-result-object v4

    :try_start_10
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, v36

    iget-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-nez v5, :cond_f

    const/4 v5, 0x1

    :goto_b
    move-object/from16 v0, v19

    invoke-static {v4, v0, v6, v7, v5}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    invoke-virtual/range {v27 .. v27}, Ljava/io/RandomAccessFile;->close()V

    :goto_c
    if-nez v4, :cond_14

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-nez v5, :cond_7

    :cond_e
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_5

    goto/16 :goto_6

    :catch_5
    move-exception v25

    goto/16 :goto_5

    :cond_f
    const/4 v5, 0x0

    goto :goto_b

    :cond_10
    :try_start_11
    move-object/from16 v0, v36

    iget-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v5, :cond_13

    new-instance v26, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v33, v0

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1500()[B

    move-result-object v5

    if-eqz v5, :cond_12

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1500()[B

    move-result-object v5

    array-length v5, v5

    move/from16 v0, v33

    if-lt v5, v0, :cond_12

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1500()[B

    move-result-object v23

    :goto_d
    if-nez v23, :cond_11

    move/from16 v0, v33

    new-array v0, v0, [B

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/ImageLoader;->access$1502([B)[B

    :cond_11
    const/4 v5, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    move/from16 v2, v33

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/RandomAccessFile;->readFully([BII)V

    const/4 v5, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v33

    move-object/from16 v2, v36

    invoke-static {v0, v5, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_c

    :cond_12
    const/16 v23, 0x0

    goto :goto_d

    :cond_13
    new-instance v32, Ljava/io/FileInputStream;

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v5, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_0

    move-result-object v4

    :try_start_12
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_c

    :cond_14
    const/4 v5, 0x1

    move/from16 v0, v16

    if-ne v0, v5, :cond_16

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v5, v6, :cond_7

    const/4 v5, 0x3

    move-object/from16 v0, v36

    iget-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v6, :cond_15

    const/4 v6, 0x0

    :goto_e
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v9

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    goto/16 :goto_6

    :cond_15
    const/4 v6, 0x1

    goto :goto_e

    :cond_16
    const/4 v5, 0x2

    move/from16 v0, v16

    if-ne v0, v5, :cond_18

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v5, v6, :cond_7

    const/4 v5, 0x1

    move-object/from16 v0, v36

    iget-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v6, :cond_17

    const/4 v6, 0x0

    :goto_f
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v9

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    goto/16 :goto_6

    :cond_17
    const/4 v6, 0x1

    goto :goto_f

    :cond_18
    const/4 v5, 0x3

    move/from16 v0, v16

    if-ne v0, v5, :cond_1c

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v5, v6, :cond_7

    const/4 v5, 0x7

    move-object/from16 v0, v36

    iget-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v6, :cond_19

    const/4 v6, 0x0

    :goto_10
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v9

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    const/4 v5, 0x7

    move-object/from16 v0, v36

    iget-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v6, :cond_1a

    const/4 v6, 0x0

    :goto_11
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v9

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    const/4 v5, 0x7

    move-object/from16 v0, v36

    iget-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v6, :cond_1b

    const/4 v6, 0x0

    :goto_12
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v9

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    goto/16 :goto_6

    :cond_19
    const/4 v6, 0x1

    goto :goto_10

    :cond_1a
    const/4 v6, 0x1

    goto :goto_11

    :cond_1b
    const/4 v6, 0x1

    goto :goto_12

    :cond_1c
    if-nez v16, :cond_7

    move-object/from16 v0, v36

    iget-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v5, :cond_7

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->pinBitmap(Landroid/graphics/Bitmap;)I
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_5

    goto/16 :goto_6

    :cond_1d
    :try_start_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    if-eqz v5, :cond_1f

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    const-string/jumbo v6, "thumb://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    const-string/jumbo v6, ":"

    const/16 v7, 0x8

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v30

    if-ltz v30, :cond_1e

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    const/16 v6, 0x8

    move/from16 v0, v30

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    const/16 v35, 0x0

    :cond_1e
    const/16 v22, 0x0

    :cond_1f
    :goto_13
    const/16 v24, 0x14

    if-eqz v34, :cond_20

    const/16 v24, 0x0

    :cond_20
    if-eqz v24, :cond_21

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    #getter for: Lorg/telegram/messenger/ImageLoader;->lastCacheOutTime:J
    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader;->access$1400(Lorg/telegram/messenger/ImageLoader;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_21

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    #getter for: Lorg/telegram/messenger/ImageLoader;->lastCacheOutTime:J
    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader;->access$1400(Lorg/telegram/messenger/ImageLoader;)J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move/from16 v0, v24

    int-to-long v10, v0

    sub-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-lez v5, :cond_21

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_21

    move/from16 v0, v24

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    :cond_21
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    #setter for: Lorg/telegram/messenger/ImageLoader;->lastCacheOutTime:J
    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/ImageLoader;->access$1402(Lorg/telegram/messenger/ImageLoader;J)J

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v6
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_6

    :try_start_14
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    if-eqz v5, :cond_25

    monitor-exit v6

    goto/16 :goto_0

    :catchall_4
    move-exception v5

    monitor-exit v6
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :try_start_15
    throw v5

    :catch_6
    move-exception v5

    move-object/from16 v4, v31

    goto/16 :goto_6

    :cond_22
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    const-string/jumbo v6, "vthumb://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    const-string/jumbo v6, ":"

    const/16 v7, 0x9

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v30

    if-ltz v30, :cond_23

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    const/16 v6, 0x9

    move/from16 v0, v30

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    const/16 v35, 0x1

    :cond_23
    const/16 v22, 0x0

    goto/16 :goto_13

    :cond_24
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    const-string/jumbo v6, "http"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_6

    move-result v5

    if-nez v5, :cond_1f

    const/16 v22, 0x0

    goto/16 :goto_13

    :cond_25
    :try_start_16
    monitor-exit v6
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    :try_start_17
    new-instance v36, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v36 .. v36}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    move-object/from16 v0, v36

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/16 v45, 0x0

    const/16 v29, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v5, :cond_3e

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v5, v12

    const/4 v6, 0x2

    if-lt v5, v6, :cond_26

    const/4 v5, 0x0

    aget-object v5, v12, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v45, v5, v6

    const/4 v5, 0x1

    aget-object v5, v12, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v29, v5, v6

    :cond_26
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v6, "b"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_27

    const/4 v15, 0x1

    :cond_27
    const/4 v5, 0x0

    cmpl-float v5, v45, v5

    if-eqz v5, :cond_3e

    const/4 v5, 0x0

    cmpl-float v5, v29, v5

    if-eqz v5, :cond_3e

    const/4 v5, 0x1

    move-object/from16 v0, v36

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v34, :cond_2a

    if-eqz v35, :cond_29

    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, 0x1

    move-object/from16 v0, v36

    invoke-static {v5, v6, v7, v8, v0}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_6

    move-object/from16 v4, v31

    :goto_14
    :try_start_18
    move-object/from16 v0, v36

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v0, v5

    move/from16 v38, v0

    move-object/from16 v0, v36

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v0, v5

    move/from16 v37, v0

    div-float v5, v38, v45

    div-float v6, v37, v29

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v41

    const/high16 v5, 0x3f80

    cmpg-float v5, v41, v5

    if-gez v5, :cond_28

    const/high16 v41, 0x3f80

    :cond_28
    const/4 v5, 0x0

    move-object/from16 v0, v36

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    move/from16 v0, v41

    float-to-int v5, v0

    move-object/from16 v0, v36

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :goto_15
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v6
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_7

    :try_start_19
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    if-eqz v5, :cond_2b

    monitor-exit v6

    goto/16 :goto_0

    :catchall_5
    move-exception v5

    monitor-exit v6
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    :try_start_1a
    throw v5
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_7

    :catch_7
    move-exception v5

    goto/16 :goto_6

    :cond_29
    :try_start_1b
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, 0x1

    move-object/from16 v0, v36

    invoke-static {v5, v6, v7, v8, v0}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-object/from16 v4, v31

    goto :goto_14

    :cond_2a
    new-instance v32, Ljava/io/FileInputStream;

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v5, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_6

    move-result-object v4

    :try_start_1c
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_7

    goto :goto_14

    :cond_2b
    :try_start_1d
    monitor-exit v6
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    :try_start_1e
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v5, :cond_2c

    if-nez v15, :cond_2c

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    if-eqz v5, :cond_31

    :cond_2c
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v36

    iput-object v5, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :goto_16
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_2d

    const/4 v5, 0x1

    move-object/from16 v0, v36

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    :cond_2d
    const/4 v5, 0x0

    move-object/from16 v0, v36

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    if-eqz v34, :cond_2e

    if-eqz v35, :cond_32

    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, 0x1

    move-object/from16 v0, v36

    invoke-static {v5, v6, v7, v8, v0}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    :cond_2e
    :goto_17
    if-nez v4, :cond_2f

    if-eqz v44, :cond_34

    new-instance v27, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v27}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    sget-object v7, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v8, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v19

    new-instance v18, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    move-object/from16 v0, v18

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v5, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v5, v0, v6, v1, v7}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/Bitmaps;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, v36

    iget-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-nez v5, :cond_33

    const/4 v5, 0x1

    :goto_18
    move-object/from16 v0, v19

    invoke-static {v4, v0, v6, v7, v5}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    invoke-virtual/range {v27 .. v27}, Ljava/io/RandomAccessFile;->close()V

    :cond_2f
    :goto_19
    if-nez v4, :cond_38

    if-eqz v22, :cond_7

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_30

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-nez v5, :cond_7

    :cond_30
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    goto/16 :goto_6

    :cond_31
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v36

    iput-object v5, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_16

    :cond_32
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, 0x1

    move-object/from16 v0, v36

    invoke-static {v5, v6, v7, v8, v0}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto/16 :goto_17

    :cond_33
    const/4 v5, 0x0

    goto :goto_18

    :cond_34
    move-object/from16 v0, v36

    iget-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v5, :cond_37

    new-instance v26, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v33, v0

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1600()[B

    move-result-object v5

    if-eqz v5, :cond_36

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1600()[B

    move-result-object v5

    array-length v5, v5

    move/from16 v0, v33

    if-lt v5, v0, :cond_36

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1600()[B

    move-result-object v23

    :goto_1a
    if-nez v23, :cond_35

    move/from16 v0, v33

    new-array v0, v0, [B

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/ImageLoader;->access$1602([B)[B

    :cond_35
    const/4 v5, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    move/from16 v2, v33

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/RandomAccessFile;->readFully([BII)V

    const/4 v5, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v33

    move-object/from16 v2, v36

    invoke-static {v0, v5, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto/16 :goto_19

    :cond_36
    const/16 v23, 0x0

    goto :goto_1a

    :cond_37
    new-instance v32, Ljava/io/FileInputStream;

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v5, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_19

    :cond_38
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v5, :cond_3b

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v14, v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v13, v5

    move-object/from16 v0, v36

    iget-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-nez v5, :cond_39

    const/4 v5, 0x0

    cmpl-float v5, v45, v5

    if-eqz v5, :cond_39

    cmpl-float v5, v14, v45

    if-eqz v5, :cond_39

    const/high16 v5, 0x41a0

    add-float v5, v5, v45

    cmpl-float v5, v14, v5

    if-lez v5, :cond_39

    div-float v41, v14, v45

    move/from16 v0, v45

    float-to-int v5, v0

    div-float v6, v13, v41

    float-to-int v6, v6

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v42

    move-object/from16 v0, v42

    if-eq v4, v0, :cond_39

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v4, v42

    :cond_39
    if-eqz v4, :cond_3b

    if-eqz v15, :cond_3b

    const/high16 v5, 0x42c8

    cmpg-float v5, v13, v5

    if-gez v5, :cond_3b

    const/high16 v5, 0x42c8

    cmpg-float v5, v14, v5

    if-gez v5, :cond_3b

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v5, v6, :cond_3a

    const/4 v5, 0x3

    move-object/from16 v0, v36

    iget-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v6, :cond_3c

    const/4 v6, 0x0

    :goto_1b
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v9

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    :cond_3a
    const/16 v17, 0x1

    :cond_3b
    if-nez v17, :cond_7

    move-object/from16 v0, v36

    iget-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v5, :cond_7

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->pinBitmap(Landroid/graphics/Bitmap;)I
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_7

    goto/16 :goto_6

    :cond_3c
    const/4 v6, 0x1

    goto :goto_1b

    :cond_3d
    const/4 v5, 0x0

    goto/16 :goto_7

    :catchall_6
    move-exception v5

    move-object/from16 v39, v40

    goto/16 :goto_9

    :catch_8
    move-exception v25

    move-object/from16 v39, v40

    goto/16 :goto_8

    :cond_3e
    move-object/from16 v4, v31

    goto/16 :goto_15
.end method
