.class public final Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/disklrucache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final ins:[Ljava/io/InputStream;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private final sequenceNumber:J

.field final synthetic this$0:Lcom/jakewharton/disklrucache/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/jakewharton/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[J)V
    .locals 1
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "sequenceNumber"    # J
    .param p5, "ins"    # [Ljava/io/InputStream;
    .param p6, "lengths"    # [J

    .prologue
    .line 675
    iput-object p1, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->this$0:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    iput-object p2, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    .line 677
    iput-wide p3, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->sequenceNumber:J

    .line 678
    iput-object p5, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    .line 679
    iput-object p6, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->lengths:[J

    .line 680
    return-void
.end method

.method synthetic constructor <init>(Lcom/jakewharton/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/jakewharton/disklrucache/DiskLruCache$1;)V
    .locals 1
    .param p1, "x0"    # Lcom/jakewharton/disklrucache/DiskLruCache;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # J
    .param p5, "x3"    # [Ljava/io/InputStream;
    .param p6, "x4"    # [J
    .param p7, "x5"    # Lcom/jakewharton/disklrucache/DiskLruCache$1;

    .prologue
    .line 669
    invoke-direct/range {p0 .. p6}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;-><init>(Lcom/jakewharton/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 707
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    .local v0, "arr$":[Ljava/io/InputStream;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 708
    .local v2, "in":Ljava/io/InputStream;
    invoke-static {v2}, Lcom/jakewharton/disklrucache/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 707
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 710
    .end local v2    # "in":Ljava/io/InputStream;
    :cond_0
    return-void
.end method

.method public edit()Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 688
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->this$0:Lcom/jakewharton/disklrucache/DiskLruCache;

    iget-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->sequenceNumber:J

    invoke-static {v0, v1, v2, v3}, Lcom/jakewharton/disklrucache/DiskLruCache;->access$1600(Lcom/jakewharton/disklrucache/DiskLruCache;Ljava/lang/String;J)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(I)Ljava/io/InputStream;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 693
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLength(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 703
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->lengths:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 698
    invoke-virtual {p0, p1}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache;->access$1700(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
