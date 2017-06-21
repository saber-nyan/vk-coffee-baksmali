.class Lcom/vkcoffee/android/utils/Serializer$DataInputSerializer;
.super Lcom/vkcoffee/android/utils/Serializer;
.source "Serializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/utils/Serializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataInputSerializer"
.end annotation


# static fields
.field static final ERROR_TEXT:Ljava/lang/String; = "Don\'t use DataInput for write values"


# instance fields
.field final dataInput:Ljava/io/DataInput;


# direct methods
.method constructor <init>(Ljava/io/DataInput;)V
    .locals 0
    .param p1, "dataInput"    # Ljava/io/DataInput;

    .prologue
    .line 551
    invoke-direct {p0}, Lcom/vkcoffee/android/utils/Serializer;-><init>()V

    .line 552
    iput-object p1, p0, Lcom/vkcoffee/android/utils/Serializer$DataInputSerializer;->dataInput:Ljava/io/DataInput;

    .line 553
    return-void
.end method


# virtual methods
.method public readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/vkcoffee/android/utils/Serializer$DataInputSerializer;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/utils/Serializer;->access$100(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public readByte()B
    .locals 2

    .prologue
    .line 602
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/utils/Serializer$DataInputSerializer;->dataInput:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readByte()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readChar()C
    .locals 2

    .prologue
    .line 611
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/utils/Serializer$DataInputSerializer;->dataInput:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readChar()C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readDouble()D
    .locals 4

    .prologue
    .line 638
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/utils/Serializer$DataInputSerializer;->dataInput:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readDouble()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 639
    :catch_0
    move-exception v0

    .line 640
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readFloat()F
    .locals 2

    .prologue
    .line 647
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/utils/Serializer$DataInputSerializer;->dataInput:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readFloat()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 648
    :catch_0
    move-exception v0

    .line 649
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readInt()I
    .locals 2

    .prologue
    .line 620
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/utils/Serializer$DataInputSerializer;->dataInput:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 621
    :catch_0
    move-exception v0

    .line 622
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readLong()J
    .locals 4

    .prologue
    .line 629
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/utils/Serializer$DataInputSerializer;->dataInput:Ljava/io/DataInput;

    invoke-interface {v1}, Ljava/io/DataInput;->readLong()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 630
    :catch_0
    move-exception v0

    .line 631
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readString()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 657
    :try_start_0
    iget-object v2, p0, Lcom/vkcoffee/android/utils/Serializer$DataInputSerializer;->dataInput:Ljava/io/DataInput;

    invoke-interface {v2}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 658
    .local v1, "len":I
    if-gez v1, :cond_0

    .line 659
    const/4 v2, 0x0

    .line 661
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/utils/Serializer$DataInputSerializer;->dataInput:Ljava/io/DataInput;

    invoke-interface {v2}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 663
    .end local v1    # "len":I
    :catch_0
    move-exception v0

    .line 664
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public writeBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "v"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 594
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Don\'t use DataInput for write values"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeByte(B)V
    .locals 2
    .param p1, "v"    # B

    .prologue
    .line 559
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Don\'t use DataInput for write values"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeChar(C)V
    .locals 2
    .param p1, "v"    # C

    .prologue
    .line 564
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Don\'t use DataInput for write values"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeDouble(D)V
    .locals 2
    .param p1, "v"    # D

    .prologue
    .line 584
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Don\'t use DataInput for write values"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeFloat(F)V
    .locals 2
    .param p1, "v"    # F

    .prologue
    .line 579
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Don\'t use DataInput for write values"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeInt(I)V
    .locals 2
    .param p1, "v"    # I

    .prologue
    .line 569
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Don\'t use DataInput for write values"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeLong(J)V
    .locals 2
    .param p1, "v"    # J

    .prologue
    .line 574
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Don\'t use DataInput for write values"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 589
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Don\'t use DataInput for write values"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
