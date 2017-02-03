.class public Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;
.super Ljava/lang/Object;
.source "DeclarePrecedenceImpl.java"

# interfaces
.implements Lorg/aspectj/lang/reflect/DeclarePrecedence;


# instance fields
.field private declaringType:Lorg/aspectj/lang/reflect/AjType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation
.end field

.field private precedenceList:[Lorg/aspectj/lang/reflect/TypePattern;

.field private precedenceString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/aspectj/lang/reflect/AjType;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;->declaringType:Lorg/aspectj/lang/reflect/AjType;

    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;->precedenceString:Ljava/lang/String;

    move-object v2, p1

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v3, ","

    invoke-direct {v1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v3, v3, [Lorg/aspectj/lang/reflect/TypePattern;

    iput-object v3, p0, Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;->precedenceList:[Lorg/aspectj/lang/reflect/TypePattern;

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;->precedenceList:[Lorg/aspectj/lang/reflect/TypePattern;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;->precedenceList:[Lorg/aspectj/lang/reflect/TypePattern;

    new-instance v4, Lorg/aspectj/internal/lang/reflect/TypePatternImpl;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/aspectj/internal/lang/reflect/TypePatternImpl;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getDeclaringType()Lorg/aspectj/lang/reflect/AjType;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;->declaringType:Lorg/aspectj/lang/reflect/AjType;

    return-object v0
.end method

.method public getPrecedenceOrder()[Lorg/aspectj/lang/reflect/TypePattern;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;->precedenceList:[Lorg/aspectj/lang/reflect/TypePattern;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "declare precedence : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/DeclarePrecedenceImpl;->precedenceString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
