.class final Lokio/Segment;
.super Ljava/lang/Object;
.source "Segment.java"


# static fields
.field static final SIZE:I = 0x800


# instance fields
.field final data:[B

.field limit:I

.field next:Lokio/Segment;

.field owner:Z

.field pos:I

.field prev:Lokio/Segment;

.field shared:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lokio/Segment;->data:[B

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/Segment;->owner:Z

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokio/Segment;->shared:Z

    .line 61
    return-void
.end method

.method constructor <init>(Lokio/Segment;)V
    .locals 3
    .param p1, "shareFrom"    # Lokio/Segment;

    .prologue
    .line 64
    iget-object v0, p1, Lokio/Segment;->data:[B

    iget v1, p1, Lokio/Segment;->pos:I

    iget v2, p1, Lokio/Segment;->limit:I

    invoke-direct {p0, v0, v1, v2}, Lokio/Segment;-><init>([BII)V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p1, Lokio/Segment;->shared:Z

    .line 66
    return-void
.end method

.method constructor <init>([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lokio/Segment;->data:[B

    .line 70
    iput p2, p0, Lokio/Segment;->pos:I

    .line 71
    iput p3, p0, Lokio/Segment;->limit:I

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokio/Segment;->owner:Z

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/Segment;->shared:Z

    .line 74
    return-void
.end method


# virtual methods
.method public compact()V
    .locals 4

    .prologue
    .line 123
    iget-object v2, p0, Lokio/Segment;->prev:Lokio/Segment;

    if-ne v2, p0, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 124
    :cond_0
    iget-object v2, p0, Lokio/Segment;->prev:Lokio/Segment;

    iget-boolean v2, v2, Lokio/Segment;->owner:Z

    if-nez v2, :cond_2

    .line 131
    :cond_1
    :goto_0
    return-void

    .line 125
    :cond_2
    iget v2, p0, Lokio/Segment;->limit:I

    iget v3, p0, Lokio/Segment;->pos:I

    sub-int v1, v2, v3

    .line 126
    .local v1, "byteCount":I
    iget-object v2, p0, Lokio/Segment;->prev:Lokio/Segment;

    iget v2, v2, Lokio/Segment;->limit:I

    rsub-int v3, v2, 0x800

    iget-object v2, p0, Lokio/Segment;->prev:Lokio/Segment;

    iget-boolean v2, v2, Lokio/Segment;->shared:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_1
    add-int v0, v3, v2

    .line 127
    .local v0, "availableByteCount":I
    if-gt v1, v0, :cond_1

    .line 128
    iget-object v2, p0, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {p0, v2, v1}, Lokio/Segment;->writeTo(Lokio/Segment;I)V

    .line 129
    invoke-virtual {p0}, Lokio/Segment;->pop()Lokio/Segment;

    .line 130
    invoke-static {p0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 126
    .end local v0    # "availableByteCount":I
    :cond_3
    iget-object v2, p0, Lokio/Segment;->prev:Lokio/Segment;

    iget v2, v2, Lokio/Segment;->pos:I

    goto :goto_1
.end method

.method public pop()Lokio/Segment;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v2, p0, Lokio/Segment;->next:Lokio/Segment;

    if-eq v2, p0, :cond_0

    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    .line 82
    .local v0, "result":Lokio/Segment;
    :goto_0
    iget-object v2, p0, Lokio/Segment;->prev:Lokio/Segment;

    iget-object v3, p0, Lokio/Segment;->next:Lokio/Segment;

    iput-object v3, v2, Lokio/Segment;->next:Lokio/Segment;

    .line 83
    iget-object v2, p0, Lokio/Segment;->next:Lokio/Segment;

    iget-object v3, p0, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v3, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 84
    iput-object v1, p0, Lokio/Segment;->next:Lokio/Segment;

    .line 85
    iput-object v1, p0, Lokio/Segment;->prev:Lokio/Segment;

    .line 86
    return-object v0

    .end local v0    # "result":Lokio/Segment;
    :cond_0
    move-object v0, v1

    .line 81
    goto :goto_0
.end method

.method public push(Lokio/Segment;)Lokio/Segment;
    .locals 1
    .param p1, "segment"    # Lokio/Segment;

    .prologue
    .line 94
    iput-object p0, p1, Lokio/Segment;->prev:Lokio/Segment;

    .line 95
    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    iput-object v0, p1, Lokio/Segment;->next:Lokio/Segment;

    .line 96
    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    iput-object p1, v0, Lokio/Segment;->prev:Lokio/Segment;

    .line 97
    iput-object p1, p0, Lokio/Segment;->next:Lokio/Segment;

    .line 98
    return-object p1
.end method

.method public split(I)Lokio/Segment;
    .locals 3
    .param p1, "byteCount"    # I

    .prologue
    .line 110
    if-lez p1, :cond_0

    iget v1, p0, Lokio/Segment;->limit:I

    iget v2, p0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 111
    :cond_1
    new-instance v0, Lokio/Segment;

    invoke-direct {v0, p0}, Lokio/Segment;-><init>(Lokio/Segment;)V

    .line 112
    .local v0, "prefix":Lokio/Segment;
    iget v1, v0, Lokio/Segment;->pos:I

    add-int/2addr v1, p1

    iput v1, v0, Lokio/Segment;->limit:I

    .line 113
    iget v1, p0, Lokio/Segment;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lokio/Segment;->pos:I

    .line 114
    iget-object v1, p0, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {v1, v0}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 115
    return-object v0
.end method

.method public writeTo(Lokio/Segment;I)V
    .locals 6
    .param p1, "sink"    # Lokio/Segment;
    .param p2, "byteCount"    # I

    .prologue
    const/16 v2, 0x800

    const/4 v5, 0x0

    .line 135
    iget-boolean v0, p1, Lokio/Segment;->owner:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 136
    :cond_0
    iget v0, p1, Lokio/Segment;->limit:I

    add-int/2addr v0, p2

    if-le v0, v2, :cond_3

    .line 138
    iget-boolean v0, p1, Lokio/Segment;->shared:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 139
    :cond_1
    iget v0, p1, Lokio/Segment;->limit:I

    add-int/2addr v0, p2

    iget v1, p1, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    if-le v0, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 140
    :cond_2
    iget-object v0, p1, Lokio/Segment;->data:[B

    iget v1, p1, Lokio/Segment;->pos:I

    iget-object v2, p1, Lokio/Segment;->data:[B

    iget v3, p1, Lokio/Segment;->limit:I

    iget v4, p1, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    iget v0, p1, Lokio/Segment;->limit:I

    iget v1, p1, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    iput v0, p1, Lokio/Segment;->limit:I

    .line 142
    iput v5, p1, Lokio/Segment;->pos:I

    .line 145
    :cond_3
    iget-object v0, p0, Lokio/Segment;->data:[B

    iget v1, p0, Lokio/Segment;->pos:I

    iget-object v2, p1, Lokio/Segment;->data:[B

    iget v3, p1, Lokio/Segment;->limit:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    iget v0, p1, Lokio/Segment;->limit:I

    add-int/2addr v0, p2

    iput v0, p1, Lokio/Segment;->limit:I

    .line 147
    iget v0, p0, Lokio/Segment;->pos:I

    add-int/2addr v0, p2

    iput v0, p0, Lokio/Segment;->pos:I

    .line 148
    return-void
.end method
