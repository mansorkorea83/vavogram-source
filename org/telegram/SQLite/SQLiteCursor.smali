.class public Lorg/telegram/SQLite/SQLiteCursor;
.super Ljava/lang/Object;
.source "SQLiteCursor.java"


# static fields
.field public static final FIELD_TYPE_BYTEARRAY:I = 0x4

.field public static final FIELD_TYPE_FLOAT:I = 0x2

.field public static final FIELD_TYPE_INT:I = 0x1

.field public static final FIELD_TYPE_NULL:I = 0x5

.field public static final FIELD_TYPE_STRING:I = 0x3


# instance fields
.field inRow:Z

.field preparedStatement:Lorg/telegram/SQLite/SQLitePreparedStatement;


# direct methods
.method public constructor <init>(Lorg/telegram/SQLite/SQLitePreparedStatement;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/SQLite/SQLiteCursor;->inRow:Z

    iput-object p1, p0, Lorg/telegram/SQLite/SQLiteCursor;->preparedStatement:Lorg/telegram/SQLite/SQLitePreparedStatement;

    return-void
.end method


# virtual methods
.method public byteArrayValue(I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLiteCursor;->checkRow()V

    iget-object v0, p0, Lorg/telegram/SQLite/SQLiteCursor;->preparedStatement:Lorg/telegram/SQLite/SQLitePreparedStatement;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->getStatementHandle()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/telegram/SQLite/SQLiteCursor;->columnByteArrayValue(II)[B

    move-result-object v0

    return-object v0
.end method

.method public byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLiteCursor;->checkRow()V

    iget-object v1, p0, Lorg/telegram/SQLite/SQLiteCursor;->preparedStatement:Lorg/telegram/SQLite/SQLitePreparedStatement;

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->getStatementHandle()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lorg/telegram/SQLite/SQLiteCursor;->columnByteBufferValue(II)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->wrap(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method checkRow()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/telegram/SQLite/SQLiteCursor;->inRow:Z

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/SQLite/SQLiteException;

    const-string/jumbo v1, "You must call next before"

    invoke-direct {v0, v1}, Lorg/telegram/SQLite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method native columnByteArrayValue(II)[B
.end method

.method native columnByteBufferValue(II)I
.end method

.method native columnDoubleValue(II)D
.end method

.method native columnIntValue(II)I
.end method

.method native columnIsNull(II)I
.end method

.method native columnLongValue(II)J
.end method

.method native columnStringValue(II)Ljava/lang/String;
.end method

.method native columnType(II)I
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/SQLite/SQLiteCursor;->preparedStatement:Lorg/telegram/SQLite/SQLitePreparedStatement;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    return-void
.end method

.method public doubleValue(I)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLiteCursor;->checkRow()V

    iget-object v0, p0, Lorg/telegram/SQLite/SQLiteCursor;->preparedStatement:Lorg/telegram/SQLite/SQLitePreparedStatement;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->getStatementHandle()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/telegram/SQLite/SQLiteCursor;->columnDoubleValue(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public getStatementHandle()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/SQLite/SQLiteCursor;->preparedStatement:Lorg/telegram/SQLite/SQLitePreparedStatement;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->getStatementHandle()I

    move-result v0

    return v0
.end method

.method public getTypeOf(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLiteCursor;->checkRow()V

    iget-object v0, p0, Lorg/telegram/SQLite/SQLiteCursor;->preparedStatement:Lorg/telegram/SQLite/SQLitePreparedStatement;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->getStatementHandle()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/telegram/SQLite/SQLiteCursor;->columnType(II)I

    move-result v0

    return v0
.end method

.method public intValue(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLiteCursor;->checkRow()V

    iget-object v0, p0, Lorg/telegram/SQLite/SQLiteCursor;->preparedStatement:Lorg/telegram/SQLite/SQLitePreparedStatement;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->getStatementHandle()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/telegram/SQLite/SQLiteCursor;->columnIntValue(II)I

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLiteCursor;->checkRow()V

    iget-object v1, p0, Lorg/telegram/SQLite/SQLiteCursor;->preparedStatement:Lorg/telegram/SQLite/SQLitePreparedStatement;

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->getStatementHandle()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lorg/telegram/SQLite/SQLiteCursor;->columnIsNull(II)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public longValue(I)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLiteCursor;->checkRow()V

    iget-object v0, p0, Lorg/telegram/SQLite/SQLiteCursor;->preparedStatement:Lorg/telegram/SQLite/SQLitePreparedStatement;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->getStatementHandle()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/telegram/SQLite/SQLiteCursor;->columnLongValue(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public next()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    const/4 v6, -0x1

    iget-object v4, p0, Lorg/telegram/SQLite/SQLiteCursor;->preparedStatement:Lorg/telegram/SQLite/SQLitePreparedStatement;

    iget-object v5, p0, Lorg/telegram/SQLite/SQLiteCursor;->preparedStatement:Lorg/telegram/SQLite/SQLitePreparedStatement;

    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->getStatementHandle()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step(I)I

    move-result v3

    if-ne v3, v6, :cond_2

    const/4 v1, 0x6

    move v2, v1

    :goto_0
    add-int/lit8 v1, v2, -0x1

    if-eqz v2, :cond_0

    :try_start_0
    const-string/jumbo v4, "tmessages"

    const-string/jumbo v5, "sqlite busy, waiting..."

    invoke-static {v4, v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    iget-object v4, p0, Lorg/telegram/SQLite/SQLiteCursor;->preparedStatement:Lorg/telegram/SQLite/SQLitePreparedStatement;

    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-ne v3, v6, :cond_2

    new-instance v4, Lorg/telegram/SQLite/SQLiteException;

    const-string/jumbo v5, "sqlite busy"

    invoke-direct {v4, v5}, Lorg/telegram/SQLite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "tmessages"

    invoke-static {v4, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, p0, Lorg/telegram/SQLite/SQLiteCursor;->inRow:Z

    iget-boolean v4, p0, Lorg/telegram/SQLite/SQLiteCursor;->inRow:Z

    return v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public stringValue(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/SQLite/SQLiteException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/telegram/SQLite/SQLiteCursor;->checkRow()V

    iget-object v0, p0, Lorg/telegram/SQLite/SQLiteCursor;->preparedStatement:Lorg/telegram/SQLite/SQLitePreparedStatement;

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->getStatementHandle()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/telegram/SQLite/SQLiteCursor;->columnStringValue(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
