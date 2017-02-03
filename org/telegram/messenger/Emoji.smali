.class public Lorg/telegram/messenger/Emoji;
.super Ljava/lang/Object;
.source "Emoji.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/Emoji$EmojiSpan;,
        Lorg/telegram/messenger/Emoji$DrawableInfo;,
        Lorg/telegram/messenger/Emoji$EmojiDrawable;
    }
.end annotation


# static fields
.field private static bigImgSize:I = 0x0

.field private static final cols:[[I = null

.field private static drawImgSize:I = 0x0

.field private static emojiBmp:[[Landroid/graphics/Bitmap; = null

.field private static inited:Z = false

.field private static loadingEmoji:[[Z = null

.field private static placeholderPaint:Landroid/graphics/Paint; = null

.field private static rects:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/CharSequence;",
            "Lorg/telegram/messenger/Emoji$DrawableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final splitCount:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v12, 0x5

    const/4 v15, 0x0

    const/4 v13, 0x4

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    sput-object v10, Lorg/telegram/messenger/Emoji;->rects:Ljava/util/HashMap;

    sput-boolean v15, Lorg/telegram/messenger/Emoji;->inited:Z

    filled-new-array {v12, v13}, [I

    move-result-object v10

    const-class v11, Landroid/graphics/Bitmap;

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Landroid/graphics/Bitmap;

    sput-object v10, Lorg/telegram/messenger/Emoji;->emojiBmp:[[Landroid/graphics/Bitmap;

    filled-new-array {v12, v13}, [I

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Z

    sput-object v10, Lorg/telegram/messenger/Emoji;->loadingEmoji:[[Z

    new-array v10, v12, [[I

    new-array v11, v13, [I

    fill-array-data v11, :array_0

    aput-object v11, v10, v15

    const/4 v11, 0x1

    new-array v12, v13, [I

    fill-array-data v12, :array_1

    aput-object v12, v10, v11

    const/4 v11, 0x2

    new-array v12, v13, [I

    fill-array-data v12, :array_2

    aput-object v12, v10, v11

    const/4 v11, 0x3

    new-array v12, v13, [I

    fill-array-data v12, :array_3

    aput-object v12, v10, v11

    new-array v11, v13, [I

    fill-array-data v11, :array_4

    aput-object v11, v10, v13

    sput-object v10, Lorg/telegram/messenger/Emoji;->cols:[[I

    const/4 v0, 0x2

    sget v10, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v11, 0x3f80

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_0

    const/16 v3, 0x20

    const/4 v0, 0x1

    :goto_0
    const/high16 v10, 0x41a0

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sput v10, Lorg/telegram/messenger/Emoji;->drawImgSize:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v10

    if-eqz v10, :cond_3

    const/high16 v10, 0x4220

    :goto_1
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sput v10, Lorg/telegram/messenger/Emoji;->bigImgSize:I

    const/4 v5, 0x0

    :goto_2
    sget-object v10, Lorg/telegram/messenger/EmojiData;->data:[[Ljava/lang/String;

    array-length v10, v10

    if-ge v5, v10, :cond_5

    sget-object v10, Lorg/telegram/messenger/EmojiData;->data:[[Ljava/lang/String;

    aget-object v10, v10, v5

    array-length v10, v10

    int-to-float v10, v10

    const/high16 v11, 0x4080

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v2, v10

    const/4 v4, 0x0

    :goto_3
    sget-object v10, Lorg/telegram/messenger/EmojiData;->data:[[Ljava/lang/String;

    aget-object v10, v10, v5

    array-length v10, v10

    if-ge v4, v10, :cond_4

    div-int v6, v4, v2

    mul-int v10, v6, v2

    sub-int v7, v4, v10

    sget-object v10, Lorg/telegram/messenger/Emoji;->cols:[[I

    aget-object v10, v10, v5

    aget v10, v10, v6

    rem-int v9, v7, v10

    sget-object v10, Lorg/telegram/messenger/Emoji;->cols:[[I

    aget-object v10, v10, v5

    aget v10, v10, v6

    div-int v1, v7, v10

    new-instance v8, Landroid/graphics/Rect;

    mul-int v10, v9, v3

    mul-int v11, v9, v0

    add-int/2addr v10, v11

    mul-int v11, v1, v3

    mul-int v12, v1, v0

    add-int/2addr v11, v12

    add-int/lit8 v12, v9, 0x1

    mul-int/2addr v12, v3

    mul-int v13, v9, v0

    add-int/2addr v12, v13

    add-int/lit8 v13, v1, 0x1

    mul-int/2addr v13, v3

    mul-int v14, v1, v0

    add-int/2addr v13, v14

    invoke-direct {v8, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v10, Lorg/telegram/messenger/Emoji;->rects:Ljava/util/HashMap;

    sget-object v11, Lorg/telegram/messenger/EmojiData;->data:[[Ljava/lang/String;

    aget-object v11, v11, v5

    aget-object v11, v11, v4

    new-instance v12, Lorg/telegram/messenger/Emoji$DrawableInfo;

    int-to-byte v13, v5

    int-to-byte v14, v6

    invoke-direct {v12, v8, v13, v14, v4}, Lorg/telegram/messenger/Emoji$DrawableInfo;-><init>(Landroid/graphics/Rect;BBI)V

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_0
    sget v10, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v11, 0x3fc0

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_1

    const/16 v3, 0x40

    goto/16 :goto_0

    :cond_1
    sget v10, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v11, 0x4000

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_2

    const/16 v3, 0x40

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x40

    goto/16 :goto_0

    :cond_3
    const/high16 v10, 0x4200

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_5
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    sput-object v10, Lorg/telegram/messenger/Emoji;->placeholderPaint:Landroid/graphics/Paint;

    sget-object v10, Lorg/telegram/messenger/Emoji;->placeholderPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v15}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :array_0
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[[Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/Emoji;->emojiBmp:[[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lorg/telegram/messenger/Emoji;->bigImgSize:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    sget v0, Lorg/telegram/messenger/Emoji;->drawImgSize:I

    return v0
.end method

.method static synthetic access$400()[[Z
    .locals 1

    sget-object v0, Lorg/telegram/messenger/Emoji;->loadingEmoji:[[Z

    return-object v0
.end method

.method static synthetic access$600(II)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/Emoji;->loadEmoji(II)V

    return-void
.end method

.method static synthetic access$700()Landroid/graphics/Paint;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/Emoji;->placeholderPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public static fixEmoji(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const v6, 0xd83c

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v6, :cond_4

    const v3, 0xd83e

    if-gt v1, v3, :cond_4

    if-ne v1, v6, :cond_3

    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_3

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v3, 0xde2f

    if-eq v1, v3, :cond_0

    const v3, 0xdc04

    if-eq v1, v3, :cond_0

    const v3, 0xde1a

    if-eq v1, v3, :cond_0

    const v3, 0xdd7f

    if-ne v1, v3, :cond_2

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\ufe0f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/16 v3, 0x20e3

    if-ne v1, v3, :cond_6

    :cond_5
    return-object p0

    :cond_6
    const/16 v3, 0x203c

    if-lt v1, v3, :cond_1

    const/16 v3, 0x3299

    if-gt v1, v3, :cond_1

    sget-object v3, Lorg/telegram/messenger/EmojiData;->emojiToFE0FMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\ufe0f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getEmojiBigDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget v1, Lorg/telegram/messenger/Emoji;->bigImgSize:I

    sget v2, Lorg/telegram/messenger/Emoji;->bigImgSize:I

    invoke-virtual {v0, v3, v3, v1, v2}, Lorg/telegram/messenger/Emoji$EmojiDrawable;->setBounds(IIII)V

    const/4 v1, 0x1

    #setter for: Lorg/telegram/messenger/Emoji$EmojiDrawable;->fullSize:Z
    invoke-static {v0, v1}, Lorg/telegram/messenger/Emoji$EmojiDrawable;->access$102(Lorg/telegram/messenger/Emoji$EmojiDrawable;Z)Z

    goto :goto_0
.end method

.method public static getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;
    .locals 5

    const/4 v4, 0x0

    sget-object v2, Lorg/telegram/messenger/Emoji;->rects:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/Emoji$DrawableInfo;

    if-nez v1, :cond_0

    const-string/jumbo v2, "tmessages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No drawable for emoji "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/telegram/messenger/Emoji$EmojiDrawable;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/Emoji$EmojiDrawable;-><init>(Lorg/telegram/messenger/Emoji$DrawableInfo;)V

    sget v2, Lorg/telegram/messenger/Emoji;->drawImgSize:I

    sget v3, Lorg/telegram/messenger/Emoji;->drawImgSize:I

    invoke-virtual {v0, v4, v4, v2, v3}, Lorg/telegram/messenger/Emoji$EmojiDrawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method private static inArray(C[C)Z
    .locals 4

    const/4 v1, 0x0

    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v0, p1, v2

    if-ne v0, p0, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static invalidateAll(Landroid/view/View;)V
    .locals 3

    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/Emoji;->invalidateAll(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    instance-of v2, p0, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method private static loadEmoji(II)V
    .locals 20

    const/4 v8, 0x1

    :try_start_0
    sget v13, Lorg/telegram/messenger/AndroidUtilities;->density:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    const/high16 v14, 0x3f80

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_2

    const/high16 v11, 0x4000

    const/4 v8, 0x2

    :goto_0
    const/4 v2, 0x4

    :goto_1
    const/4 v13, 0x7

    if-ge v2, v13, :cond_5

    :try_start_1
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "v%d_emoji%.01fx_%d.jpg"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v13, v7}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_0
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "v%d_emoji%.01fx_a_%d.jpg"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v13, v7}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :try_start_2
    sget v13, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v14, 0x3fc0

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_3

    const/high16 v11, 0x4000

    goto :goto_0

    :cond_3
    sget v13, Lorg/telegram/messenger/AndroidUtilities;->density:F
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    const/high16 v14, 0x4000

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_4

    const/high16 v11, 0x4000

    goto/16 :goto_0

    :cond_4
    const/high16 v11, 0x4000

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0x8

    :goto_2
    const/16 v13, 0xa

    if-ge v2, v13, :cond_7

    :try_start_3
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v14, "v%d_emoji%.01fx_%d.png"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v13, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v13, v7}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_4
    const-string/jumbo v13, "tmessages"

    invoke-static {v13, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_7
    const/4 v3, 0x0

    :try_start_5
    sget-object v13, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "emoji/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v16, "v10_emoji%.01fx_%d_%d.png"

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v15 .. v17}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v13, 0x0

    iput-boolean v13, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput v8, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v13, 0x0

    invoke-static {v9, v13, v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :goto_3
    move-object v5, v3

    :try_start_6
    new-instance v13, Lorg/telegram/messenger/Emoji$1;

    move/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v13, v0, v1, v5}, Lorg/telegram/messenger/Emoji$1;-><init>(IILandroid/graphics/Bitmap;)V

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_4
    return-void

    :catch_1
    move-exception v4

    const-string/jumbo v13, "tmessages"

    invoke-static {v13, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception v12

    const-string/jumbo v13, "tmessages"

    const-string/jumbo v14, "Error loading emoji"

    invoke-static {v13, v14, v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public static replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ[I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ[I)Ljava/lang/CharSequence;
    .locals 28

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->useSystemEmoji:Z

    move/from16 v23, v0

    if-nez v23, :cond_0

    if-eqz p0, :cond_0

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v23

    if-nez v23, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-nez p3, :cond_7

    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v23, v0

    if-eqz v23, :cond_7

    move-object/from16 v19, p0

    check-cast v19, Landroid/text/Spannable;

    :goto_1
    const-wide/16 v8, 0x0

    const/4 v15, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v18, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v23, 0x10

    move/from16 v0, v23

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v17

    const/4 v11, 0x0

    const/16 v16, 0x0

    :goto_2
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_1b

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const v23, 0xd83c

    move/from16 v0, v23

    if-lt v7, v0, :cond_2

    const v23, 0xd83e

    move/from16 v0, v23

    if-le v7, v0, :cond_3

    :cond_2
    const-wide/16 v24, 0x0

    cmp-long v23, v8, v24

    if-eqz v23, :cond_8

    const-wide v24, -0x100000000L

    and-long v24, v24, v8

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-nez v23, :cond_8

    const-wide/32 v24, 0xffff

    and-long v24, v24, v8

    const-wide/32 v26, 0xd83c

    cmp-long v23, v24, v26

    if-nez v23, :cond_8

    const v23, 0xdde6

    move/from16 v0, v23

    if-lt v7, v0, :cond_8

    const v23, 0xddff

    move/from16 v0, v23

    if-gt v7, v0, :cond_8

    :cond_3
    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    move/from16 v21, v16

    :cond_4
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v22, v22, 0x1

    const/16 v23, 0x10

    shl-long v8, v8, v23

    int-to-long v0, v7

    move-wide/from16 v24, v0

    or-long v8, v8, v24

    :cond_5
    :goto_3
    move/from16 v18, v16

    const/4 v6, 0x0

    :goto_4
    const/16 v23, 0x3

    move/from16 v0, v23

    if-ge v6, v0, :cond_14

    add-int/lit8 v23, v16, 0x1

    move/from16 v0, v23

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    add-int/lit8 v23, v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v6, v0, :cond_13

    const/16 v23, 0x200d

    move/from16 v0, v23

    if-ne v7, v0, :cond_6

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v23

    if-lez v23, :cond_6

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v22, v22, 0x1

    const/4 v11, 0x0

    :cond_6
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_7
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v23

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v19

    goto/16 :goto_1

    :cond_8
    :try_start_1
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v23

    if-lez v23, :cond_a

    const/16 v23, 0x2640

    move/from16 v0, v23

    if-eq v7, v0, :cond_9

    const/16 v23, 0x2642

    move/from16 v0, v23

    if-ne v7, v0, :cond_a

    :cond_9
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v22, v22, 0x1

    const-wide/16 v8, 0x0

    const/4 v11, 0x1

    goto :goto_3

    :cond_a
    const-wide/16 v24, 0x0

    cmp-long v23, v8, v24

    if-lez v23, :cond_b

    const v23, 0xf000

    and-int v23, v23, v7

    const v24, 0xd000

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v22, v22, 0x1

    const-wide/16 v8, 0x0

    const/4 v11, 0x1

    goto :goto_3

    :cond_b
    const/16 v23, 0x20e3

    move/from16 v0, v23

    if-ne v7, v0, :cond_e

    if-lez v16, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/16 v23, 0x30

    move/from16 v0, v23

    if-lt v10, v0, :cond_c

    const/16 v23, 0x39

    move/from16 v0, v23

    if-le v10, v0, :cond_d

    :cond_c
    const/16 v23, 0x23

    move/from16 v0, v23

    if-eq v10, v0, :cond_d

    const/16 v23, 0x2a

    move/from16 v0, v23

    if-ne v10, v0, :cond_5

    :cond_d
    move/from16 v21, v18

    sub-int v23, v16, v18

    add-int/lit8 v22, v23, 0x1

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v11, 0x1

    goto/16 :goto_3

    :cond_e
    const/16 v23, 0xa9

    move/from16 v0, v23

    if-eq v7, v0, :cond_f

    const/16 v23, 0xae

    move/from16 v0, v23

    if-eq v7, v0, :cond_f

    const/16 v23, 0x203c

    move/from16 v0, v23

    if-lt v7, v0, :cond_11

    const/16 v23, 0x3299

    move/from16 v0, v23

    if-gt v7, v0, :cond_11

    :cond_f
    sget-object v23, Lorg/telegram/messenger/EmojiData;->dataCharsMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    move/from16 v21, v16

    :cond_10
    add-int/lit8 v22, v22, 0x1

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v11, 0x1

    goto/16 :goto_3

    :cond_11
    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_12

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/4 v11, 0x0

    goto/16 :goto_3

    :cond_12
    const v23, 0xfe0f

    move/from16 v0, v23

    if-eq v7, v0, :cond_5

    if-eqz p4, :cond_5

    const/16 v23, 0x0

    const/16 v24, 0x0

    aput v24, p4, v23

    const/16 p4, 0x0

    goto/16 :goto_3

    :cond_13
    const v23, 0xfe00

    move/from16 v0, v23

    if-lt v7, v0, :cond_6

    const v23, 0xfe0f

    move/from16 v0, v23

    if-gt v7, v0, :cond_6

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_5

    :cond_14
    if-eqz v11, :cond_1a

    if-eqz p4, :cond_15

    const/16 v23, 0x0

    aget v24, p4, v23

    add-int/lit8 v24, v24, 0x1

    aput v24, p4, v23

    :cond_15
    add-int/lit8 v23, v16, 0x2

    move/from16 v0, v23

    move/from16 v1, v17

    if-ge v0, v1, :cond_16

    add-int/lit8 v23, v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v23

    const v24, 0xd83c

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_16

    add-int/lit8 v23, v16, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v23

    const v24, 0xdffb

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_16

    add-int/lit8 v23, v16, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v23

    const v24, 0xdfff

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_16

    add-int/lit8 v23, v16, 0x1

    add-int/lit8 v24, v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v22, v22, 0x2

    add-int/lit8 v16, v16, 0x2

    :cond_16
    add-int/lit8 v23, v16, 0x2

    move/from16 v0, v23

    move/from16 v1, v17

    if-ge v0, v1, :cond_18

    add-int/lit8 v23, v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v23

    const/16 v24, 0x200d

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_18

    add-int/lit8 v23, v16, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v23

    const/16 v24, 0x2640

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_17

    add-int/lit8 v23, v16, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v23

    const/16 v24, 0x2642

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_18

    :cond_17
    add-int/lit8 v23, v16, 0x1

    add-int/lit8 v24, v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v22, v22, 0x2

    add-int/lit8 v16, v16, 0x2

    :cond_18
    const/16 v23, 0x0

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v12

    if-eqz v12, :cond_19

    new-instance v20, Lorg/telegram/messenger/Emoji$EmojiSpan;

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, p2

    move-object/from16 v3, p1

    invoke-direct {v0, v12, v1, v2, v3}, Lorg/telegram/messenger/Emoji$EmojiSpan;-><init>(Lorg/telegram/messenger/Emoji$EmojiDrawable;IILandroid/graphics/Paint$FontMetricsInt;)V

    add-int v23, v21, v22

    const/16 v24, 0x21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v15, v15, 0x1

    :cond_19
    const/16 v22, 0x0

    const/16 v21, -0x1

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v11, 0x0

    :cond_1a
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v24, 0x17

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_1c

    const/16 v23, 0x32

    move/from16 v0, v23

    if-lt v15, v0, :cond_1c

    :cond_1b
    move-object/from16 p0, v19

    goto/16 :goto_0

    :cond_1c
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    :catch_0
    move-exception v13

    const-string/jumbo v23, "tmessages"

    move-object/from16 v0, v23

    invoke-static {v0, v13}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
