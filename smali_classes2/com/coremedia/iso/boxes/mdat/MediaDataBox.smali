.class public final Lcom/coremedia/iso/boxes/mdat/MediaDataBox;
.super Ljava/lang/Object;
.source "MediaDataBox.java"

# interfaces
.implements Lcom/coremedia/iso/boxes/Box;


# static fields
.field public static final TYPE:Ljava/lang/String; = "mdat"


# instance fields
.field private dataSource:Lcom/googlecode/mp4parser/DataSource;

.field private offset:J

.field parent:Lcom/coremedia/iso/boxes/Container;

.field private size:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static transfer(Lcom/googlecode/mp4parser/DataSource;JJLjava/nio/channels/WritableByteChannel;)V
    .locals 13
    .param p0, "from"    # Lcom/googlecode/mp4parser/DataSource;
    .param p1, "position"    # J
    .param p3, "count"    # J
    .param p5, "to"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    const-wide/32 v8, 0x3ff8000    # 3.31399947E-316

    .line 72
    .local v8, "maxCount":J
    const-wide/16 v10, 0x0

    .line 73
    .local v10, "offset":J
    :goto_0
    cmp-long v0, v10, p3

    if-ltz v0, :cond_0

    .line 76
    return-void

    .line 74
    :cond_0
    add-long v2, p1, v10

    sub-long v0, p3, v10

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v1, p0

    move-object/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/googlecode/mp4parser/DataSource;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v0

    add-long/2addr v10, v0

    goto :goto_0
.end method


# virtual methods
.method public getBox(Ljava/nio/channels/WritableByteChannel;)V
    .locals 7
    .param p1, "writableByteChannel"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v1, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    iget-wide v2, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->offset:J

    iget-wide v4, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->size:J

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->transfer(Lcom/googlecode/mp4parser/DataSource;JJLjava/nio/channels/WritableByteChannel;)V

    .line 80
    return-void
.end method

.method public getOffset()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->offset:J

    return-wide v0
.end method

.method public getParent()Lcom/coremedia/iso/boxes/Container;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->parent:Lcom/coremedia/iso/boxes/Container;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->size:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "mdat"

    return-object v0
.end method

.method public parse(Lcom/googlecode/mp4parser/DataSource;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/BoxParser;)V
    .locals 5
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
    .line 92
    invoke-interface {p1}, Lcom/googlecode/mp4parser/DataSource;->position()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->offset:J

    .line 93
    iput-object p1, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    .line 94
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->size:J

    .line 95
    invoke-interface {p1}, Lcom/googlecode/mp4parser/DataSource;->position()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-interface {p1, v0, v1}, Lcom/googlecode/mp4parser/DataSource;->position(J)V

    .line 97
    return-void
.end method

.method public setParent(Lcom/coremedia/iso/boxes/Container;)V
    .locals 0
    .param p1, "parent"    # Lcom/coremedia/iso/boxes/Container;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->parent:Lcom/coremedia/iso/boxes/Container;

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MediaDataBox{size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    iget-wide v2, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->size:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
