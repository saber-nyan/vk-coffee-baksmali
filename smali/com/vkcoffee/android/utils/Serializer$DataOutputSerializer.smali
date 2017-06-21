.class Lcom/vkcoffee/android/utils/Serializer$DataOutputSerializer;
.super Lcom/vkcoffee/android/utils/Serializer;
.source "Serializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/utils/Serializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataOutputSerializer"
.end annotation


# static fields
.field static final ERROR_TEXT:Ljava/lang/String; = "Don\'t use DataOutput for read values"


# instance fields
.field final dataOutput:Ljava/io/DataOutput;


# direct methods
.method constructor <init>(Ljava/io/DataOutput;)V
    .locals 0
    .param p1, "dataOutput"    # Ljava/io/DataOutput;

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/vkcoffee/android/utils/Serializer;-><init>()V

    .line 422
    iput-object p1, p0, Lcom/vkcoffee/android/utils/Serializer$DataOutputSerializer;->dataOutput:Ljava/io/DataOutput;

    .line 423
    return-void
.end method


# virtual methods
.method public readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;
    .locals 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 541
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Don\'t use DataOutput for read values"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readByte()B
    .locals 2

    .prologue
    .line 504
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Don\'t use DataOutput for read values"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readChar()C
    .locals 2

    .prologue
    .line 509
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Don\'t use DataOutput for read values"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readDouble()D
    .locals 2

    .prologue
    .line 524
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Don\'t use DataOutput for read values"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readFloat()F
    .locals 2

    .prologue
    .line 529
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Don\'t use DataOutput for read values"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readInt()I
    .locals 2

    .prologue
    .line 514
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Don\'t use DataOutput for read values"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readLong()J
    .locals 2

    .prologue
    .line 519
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Don\'t use DataOutput for read values"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readString()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 535
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Don\'t use DataOutput for read values"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "v"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 497
    invoke-static {p1}, Lcom/vkcoffee/android/utils/Serializer;->access$000(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/utils/Serializer$DataOutputSerializer;->writeString(Ljava/lang/String;)V

    .line 498
    return-void
.end method

.method public writeByte(B)V
    .locals 2
    .param p1, "v"    # B

    .prologue
    .line 430
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/utils/Serializer$DataOutputSerializer;->dataOutput:Ljava/io/DataOutput;

    invoke-interface {v1, p1}, Ljava/io/DataOutput;->writeByte(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    return-void

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeChar(C)V
    .locals 2
    .param p1, "v"    # C

    .prologue
    .line 439
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/utils/Serializer$DataOutputSerializer;->dataOutput:Ljava/io/DataOutput;

    invoke-interface {v1, p1}, Ljava/io/DataOutput;->writeChar(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    return-void

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeDouble(D)V
    .locals 3
    .param p1, "v"    # D

    .prologue
    .line 475
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/utils/Serializer$DataOutputSerializer;->dataOutput:Ljava/io/DataOutput;

    invoke-interface {v1, p1, p2}, Ljava/io/DataOutput;->writeDouble(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    return-void

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeFloat(F)V
    .locals 2
    .param p1, "v"    # F

    .prologue
    .line 466
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/utils/Serializer$DataOutputSerializer;->dataOutput:Ljava/io/DataOutput;

    invoke-interface {v1, p1}, Ljava/io/DataOutput;->writeFloat(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    return-void

    .line 467
    :catch_0
    move-exception v0

    .line 468
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeInt(I)V
    .locals 2
    .param p1, "v"    # I

    .prologue
    .line 448
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/utils/Serializer$DataOutputSerializer;->dataOutput:Ljava/io/DataOutput;

    invoke-interface {v1, p1}, Ljava/io/DataOutput;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    return-void

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeLong(J)V
    .locals 3
    .param p1, "v"    # J

    .prologue
    .line 457
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/utils/Serializer$DataOutputSerializer;->dataOutput:Ljava/io/DataOutput;

    invoke-interface {v1, p1, p2}, Ljava/io/DataOutput;->writeLong(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    return-void

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 3
    .param p1, "v"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 484
    if-nez p1, :cond_0

    .line 485
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/utils/Serializer$DataOutputSerializer;->dataOutput:Ljava/io/DataOutput;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 493
    :goto_0
    return-void

    .line 487
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/utils/Serializer$DataOutputSerializer;->dataOutput:Ljava/io/DataOutput;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 488
    iget-object v1, p0, Lcom/vkcoffee/android/utils/Serializer$DataOutputSerializer;->dataOutput:Ljava/io/DataOutput;

    invoke-interface {v1, p1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 490
    :catch_0
    move-exception v0

    .line 491
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
