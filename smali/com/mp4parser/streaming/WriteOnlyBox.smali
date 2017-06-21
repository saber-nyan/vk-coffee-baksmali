.class public abstract Lcom/mp4parser/streaming/WriteOnlyBox;
.super Ljava/lang/Object;
.source "WriteOnlyBox.java"

# interfaces
.implements Lcom/coremedia/iso/boxes/Box;


# instance fields
.field private parent:Lcom/coremedia/iso/boxes/Container;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/mp4parser/streaming/WriteOnlyBox;->type:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getOffset()J
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "It\'s a\u00b4write only box"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getParent()Lcom/coremedia/iso/boxes/Container;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mp4parser/streaming/WriteOnlyBox;->parent:Lcom/coremedia/iso/boxes/Container;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mp4parser/streaming/WriteOnlyBox;->type:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Lcom/googlecode/mp4parser/DataSource;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/BoxParser;)V
    .locals 2
    .param p1, "dataSource"    # Lcom/googlecode/mp4parser/DataSource;
    .param p2, "header"    # Ljava/nio/ByteBuffer;
    .param p3, "contentSize"    # J
    .param p5, "boxParser"    # Lcom/coremedia/iso/BoxParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "It\'s a\u00b4write only box"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setParent(Lcom/coremedia/iso/boxes/Container;)V
    .locals 0
    .param p1, "parent"    # Lcom/coremedia/iso/boxes/Container;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/mp4parser/streaming/WriteOnlyBox;->parent:Lcom/coremedia/iso/boxes/Container;

    .line 22
    return-void
.end method
