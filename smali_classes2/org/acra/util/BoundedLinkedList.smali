.class public Lorg/acra/util/BoundedLinkedList;
.super Ljava/util/LinkedList;
.source "BoundedLinkedList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final maxSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "maxSize"    # I

    .prologue
    .line 35
    .local p0, "this":Lorg/acra/util/BoundedLinkedList;, "Lorg/acra/util/BoundedLinkedList<TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 36
    iput p1, p0, Lorg/acra/util/BoundedLinkedList;->maxSize:I

    .line 37
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lorg/acra/util/BoundedLinkedList;, "Lorg/acra/util/BoundedLinkedList<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/acra/util/BoundedLinkedList;->size()I

    move-result v0

    iget v1, p0, Lorg/acra/util/BoundedLinkedList;->maxSize:I

    if-ne v0, v1, :cond_0

    .line 60
    invoke-virtual {p0}, Lorg/acra/util/BoundedLinkedList;->removeFirst()Ljava/lang/Object;

    .line 62
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 63
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lorg/acra/util/BoundedLinkedList;, "Lorg/acra/util/BoundedLinkedList<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/acra/util/BoundedLinkedList;->size()I

    move-result v0

    iget v1, p0, Lorg/acra/util/BoundedLinkedList;->maxSize:I

    if-ne v0, v1, :cond_0

    .line 47
    invoke-virtual {p0}, Lorg/acra/util/BoundedLinkedList;->removeFirst()Ljava/lang/Object;

    .line 49
    :cond_0
    invoke-super {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lorg/acra/util/BoundedLinkedList;, "Lorg/acra/util/BoundedLinkedList<TE;>;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lorg/acra/util/BoundedLinkedList;, "Lorg/acra/util/BoundedLinkedList<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0}, Lorg/acra/util/BoundedLinkedList;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    add-int v1, v2, v3

    .line 73
    .local v1, "totalNeededSize":I
    iget v2, p0, Lorg/acra/util/BoundedLinkedList;->maxSize:I

    sub-int v0, v1, v2

    .line 74
    .local v0, "overhead":I
    if-lez v0, :cond_0

    .line 75
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Lorg/acra/util/BoundedLinkedList;->removeRange(II)V

    .line 77
    :cond_0
    invoke-super {p0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    move-result v2

    return v2
.end method

.method public addFirst(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lorg/acra/util/BoundedLinkedList;, "Lorg/acra/util/BoundedLinkedList<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lorg/acra/util/BoundedLinkedList;, "Lorg/acra/util/BoundedLinkedList<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lorg/acra/util/BoundedLinkedList;->add(Ljava/lang/Object;)Z

    .line 115
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 124
    .local p0, "this":Lorg/acra/util/BoundedLinkedList;, "Lorg/acra/util/BoundedLinkedList<TE;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v2, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/acra/util/BoundedLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 126
    .local v1, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 128
    .end local v1    # "object":Ljava/lang/Object;, "TE;"
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
