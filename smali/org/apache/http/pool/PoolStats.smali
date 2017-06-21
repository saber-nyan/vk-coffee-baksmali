.class public Lorg/apache/http/pool/PoolStats;
.super Ljava/lang/Object;
.source "PoolStats.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x26f6e7ac454e3980L


# instance fields
.field private final available:I

.field private final leased:I

.field private final max:I

.field private final pending:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "leased"    # I
    .param p2, "pending"    # I
    .param p3, "free"    # I
    .param p4, "max"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lorg/apache/http/pool/PoolStats;->leased:I

    .line 54
    iput p2, p0, Lorg/apache/http/pool/PoolStats;->pending:I

    .line 55
    iput p3, p0, Lorg/apache/http/pool/PoolStats;->available:I

    .line 56
    iput p4, p0, Lorg/apache/http/pool/PoolStats;->max:I

    .line 57
    return-void
.end method


# virtual methods
.method public getAvailable()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lorg/apache/http/pool/PoolStats;->available:I

    return v0
.end method

.method public getLeased()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lorg/apache/http/pool/PoolStats;->leased:I

    return v0
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lorg/apache/http/pool/PoolStats;->max:I

    return v0
.end method

.method public getPending()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lorg/apache/http/pool/PoolStats;->pending:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "[leased: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget v1, p0, Lorg/apache/http/pool/PoolStats;->leased:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, "; pending: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget v1, p0, Lorg/apache/http/pool/PoolStats;->pending:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, "; available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget v1, p0, Lorg/apache/http/pool/PoolStats;->available:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, "; max: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget v1, p0, Lorg/apache/http/pool/PoolStats;->max:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
