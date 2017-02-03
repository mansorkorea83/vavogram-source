.class public Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "AC3TrackImpl.java"


# static fields
.field static bitRateAndFrameSizeTable:[[[[I


# instance fields
.field private final dataSource:Lcom/googlecode/mp4parser/DataSource;

.field private duration:[J

.field private sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

.field private samples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation
.end field

.field private trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x13

    filled-new-array {v0, v4, v5, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[[I

    sput-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x20

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x20

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x40

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x40

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x28

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x28

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x50

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x50

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v4

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x30

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v4

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x30

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v4

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x60

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v4

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x60

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v5

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x38

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v5

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x38

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v5

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x70

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v5

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x70

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v6

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x40

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v6

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x40

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v6

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x80

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v6

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x80

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x50

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x50

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0xa0

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0xa0

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x60

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x60

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0xc0

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0xc0

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x70

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x70

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0xe0

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0xe0

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x8

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x80

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x8

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x80

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x8

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x100

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x8

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x100

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x9

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0xa0

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x9

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0xa0

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x9

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x140

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x9

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x140

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0xc0

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0xc0

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x180

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x180

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0xe0

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0xe0

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x1c0

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x1c0

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xc

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x100

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xc

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x100

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xc

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x200

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xc

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x200

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xd

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x140

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xd

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x140

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xd

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x280

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xd

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x280

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xe

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x180

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xe

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x180

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xe

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x300

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xe

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x300

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xf

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x1c0

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xf

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x1c0

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xf

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x380

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xf

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x380

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x10

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x200

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x10

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x200

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x10

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x400

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x10

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x400

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x11

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x240

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x11

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x240

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x11

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x480

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x11

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x480

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x12

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x280

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x12

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x280

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x12

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x500

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x12

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x500

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x20

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x20

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x45

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x46

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x28

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x28

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x57

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x58

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v4

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x30

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v4

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x30

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v4

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x68

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v4

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x69

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v5

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x38

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v5

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x38

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v5

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x79

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v5

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x7a

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v6

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x40

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v6

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x40

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v6

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x8b

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v6

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x8c

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x50

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x50

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0xae

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0xaf

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x60

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x60

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0xd0

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0xd1

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x70

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x70

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0xf3

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0xf4

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x8

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x80

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x8

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x80

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x8

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x116

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x8

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x117

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x9

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0xa0

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x9

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0xa0

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x9

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x15c

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x9

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x15d

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0xc0

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0xc0

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x1a1

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x1a2

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0xe0

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0xe0

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x1e7

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x1e8

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xc

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x100

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xc

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x100

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xc

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x22d

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xc

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x22e

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xd

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x140

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xd

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x140

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xd

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x2b8

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xd

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x2b9

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xe

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x180

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xe

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x180

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xe

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x343

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xe

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x344

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xf

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x1c0

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xf

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x1c0

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xf

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x3cf

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xf

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x3cf

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x10

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x200

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x10

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x200

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x10

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x45a

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x10

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x45b

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x11

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x240

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x11

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x240

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x11

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x4e5

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x11

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x4e6

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x12

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x280

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x12

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x280

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x12

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x571

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x12

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x572

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x20

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x20

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x60

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x60

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x28

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x28

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x78

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x78

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v4

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x30

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v4

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x30

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v4

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x90

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v4

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x90

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v5

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x38

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v5

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x38

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v5

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0xa8

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v5

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0xa8

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v6

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x40

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v6

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x40

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v6

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0xc0

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v0, v0, v6

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0xc0

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x50

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x50

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0xf0

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0xf0

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x60

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x60

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x120

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x120

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x70

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x70

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x150

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x150

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x8

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x80

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x8

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x80

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x8

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x180

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x8

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x180

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x9

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0xa0

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x9

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0xa0

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x9

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x1e0

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x9

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x1e0

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0xc0

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0xc0

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x240

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x240

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0xe0

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0xe0

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x2a0

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x2a0

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xc

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x100

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xc

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x100

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xc

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x300

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xc

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x300

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xd

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x140

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xd

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x140

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xd

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x3c0

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xd

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x3c0

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xe

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x180

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xe

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x180

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xe

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x480

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xe

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x480

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xf

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x1c0

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xf

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x1c0

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xf

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x540

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0xf

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x540

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x10

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x200

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x10

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x200

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x10

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x600

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x10

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x600

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x11

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x240

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x11

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x240

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x11

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x6c0

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x11

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x6c0

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x12

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x280

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x12

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x280

    aput v1, v0, v2

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x12

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x780

    aput v1, v0, v3

    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    const/16 v1, 0x12

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x780

    aput v1, v0, v3

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/mp4parser/DataSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "eng"

    invoke-direct {p0, p1, v0}, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;-><init>(Lcom/googlecode/mp4parser/DataSource;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/mp4parser/DataSource;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-virtual {v1, p2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setLanguage(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->readSamples()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samples:Ljava/util/List;

    new-instance v1, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->createAudioSampleEntry()Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setCreationTime(Ljava/util/Date;)V

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setModificationTime(Ljava/util/Date;)V

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-virtual {v1, p2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setLanguage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTimescale(J)V

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setVolume(F)V

    return-void
.end method

.method private createAudioSampleEntry()Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v12, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samples:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/googlecode/mp4parser/authoring/Sample;

    invoke-interface {v12}, Lcom/googlecode/mp4parser/authoring/Sample;->asByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    new-instance v4, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    invoke-direct {v4, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    const/16 v12, 0x10

    invoke-virtual {v4, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v11

    const/16 v12, 0xb77

    if-eq v11, v12, :cond_0

    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "Stream doesn\'t seem to be AC3"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_0
    const/16 v12, 0x10

    invoke-virtual {v4, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    const/4 v12, 0x2

    invoke-virtual {v4, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "Unsupported Sample Rate"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    :pswitch_0
    const v10, 0xbb80

    :goto_0
    const/4 v12, 0x6

    invoke-virtual {v4, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v7

    const/4 v12, 0x5

    invoke-virtual {v4, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v5

    const/4 v12, 0x3

    invoke-virtual {v4, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v6

    const/4 v12, 0x3

    invoke-virtual {v4, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v1

    const/16 v12, 0x10

    if-ne v5, v12, :cond_1

    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "You cannot read E-AC-3 track with AC3TrackImpl.class - user EC3TrackImpl.class"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    :pswitch_1
    const v10, 0xac44

    goto :goto_0

    :pswitch_2
    const/16 v10, 0x7d00

    goto :goto_0

    :cond_1
    const/16 v12, 0x9

    if-ne v5, v12, :cond_6

    div-int/lit8 v10, v10, 0x2

    :cond_2
    const/4 v12, 0x1

    if-eq v1, v12, :cond_3

    and-int/lit8 v12, v1, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    const/4 v12, 0x2

    invoke-virtual {v4, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    :cond_3
    and-int/lit8 v12, v1, 0x4

    if-eqz v12, :cond_4

    const/4 v12, 0x2

    invoke-virtual {v4, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    :cond_4
    const/4 v12, 0x2

    if-ne v1, v12, :cond_5

    const/4 v12, 0x2

    invoke-virtual {v4, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    :cond_5
    packed-switch v1, :pswitch_data_1

    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "Unsupported acmod"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_6
    const/16 v12, 0x8

    if-eq v5, v12, :cond_2

    const/4 v12, 0x6

    if-eq v5, v12, :cond_2

    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "Unsupported bsid"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    :pswitch_3
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v9

    const/4 v12, 0x1

    if-ne v9, v12, :cond_7

    :cond_7
    new-instance v2, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    const-string/jumbo v12, "ac-3"

    invoke-direct {v2, v12}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x2

    invoke-virtual {v2, v12}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setChannelCount(I)V

    int-to-long v12, v10

    invoke-virtual {v2, v12, v13}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleRate(J)V

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setDataReferenceIndex(I)V

    const/16 v12, 0x10

    invoke-virtual {v2, v12}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleSize(I)V

    new-instance v0, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;-><init>()V

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->setAcmod(I)V

    shr-int/lit8 v12, v7, 0x1

    invoke-virtual {v0, v12}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->setBitRateCode(I)V

    invoke-virtual {v0, v5}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->setBsid(I)V

    invoke-virtual {v0, v6}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->setBsmod(I)V

    invoke-virtual {v0, v8}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->setFscod(I)V

    invoke-virtual {v0, v9}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->setLfeon(I)V

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Lcom/googlecode/mp4parser/boxes/AC3SpecificBox;->setReserved(I)V

    invoke-virtual {v2, v0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private getFrameSize(II)I
    .locals 4

    const/4 v3, 0x1

    ushr-int/lit8 v1, p1, 0x1

    and-int/lit8 v0, p1, 0x1

    const/16 v2, 0x12

    if-gt v1, v2, :cond_0

    if-gt v0, v3, :cond_0

    const/4 v2, 0x2

    if-le p2, v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Cannot determine framesize of current sample"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    sget-object v2, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->bitRateAndFrameSizeTable:[[[[I

    aget-object v2, v2, v1

    aget-object v2, v2, v0

    aget-object v2, v2, p2

    aget v2, v2, v3

    mul-int/lit8 v2, v2, 0x2

    return v2
.end method

.method private readSamples()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    invoke-interface {v1, v10}, Lcom/googlecode/mp4parser/DataSource;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->duration:[J

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->duration:[J

    const-wide/16 v2, 0x600

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    return-object v11

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v8, v0, 0x3f

    const/4 v0, 0x4

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    shr-int/lit8 v9, v0, 0x6

    invoke-direct {p0, v8, v9}, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->getFrameSize(II)I

    move-result v7

    new-instance v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl$1SampleImpl;

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    invoke-interface {v1}, Lcom/googlecode/mp4parser/DataSource;->position()J

    move-result-wide v2

    const-wide/16 v4, 0x5

    sub-long/2addr v2, v4

    int-to-long v4, v7

    iget-object v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl$1SampleImpl;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;JJLcom/googlecode/mp4parser/DataSource;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    invoke-interface {v1}, Lcom/googlecode/mp4parser/DataSource;->position()J

    move-result-wide v2

    const-wide/16 v4, 0x5

    sub-long/2addr v2, v4

    int-to-long v4, v7

    add-long/2addr v2, v4

    invoke-interface {v0, v2, v3}, Lcom/googlecode/mp4parser/DataSource;->position(J)V

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/DataSource;->close()V

    return-void
.end method

.method public getCompositionTimeEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "soun"

    return-object v0
.end method

.method public getSampleDependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    return-object v0
.end method

.method public declared-synchronized getSampleDurations()[J
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->duration:[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSamples()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->samples:Ljava/util/List;

    return-object v0
.end method

.method public getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSyncSamples()[J
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    return-object v0
.end method
