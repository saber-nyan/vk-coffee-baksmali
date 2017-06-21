.class public final Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/disklrucache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jakewharton/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field private committed:Z

.field private final entry:Lcom/jakewharton/disklrucache/DiskLruCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lcom/jakewharton/disklrucache/DiskLruCache;

.field private final written:[Z


# direct methods
.method private constructor <init>(Lcom/jakewharton/disklrucache/DiskLruCache;Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)V
    .locals 1
    .param p2, "entry"    # Lcom/jakewharton/disklrucache/DiskLruCache$Entry;

    .prologue
    .line 727
    iput-object p1, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->this$0:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 728
    iput-object p2, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->entry:Lcom/jakewharton/disklrucache/DiskLruCache$Entry;

    .line 729
    invoke-static {p2}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->access$600(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->written:[Z

    .line 730
    return-void

    .line 729
    :cond_0
    invoke-static {p1}, Lcom/jakewharton/disklrucache/DiskLruCache;->access$1800(Lcom/jakewharton/disklrucache/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/jakewharton/disklrucache/DiskLruCache;Lcom/jakewharton/disklrucache/DiskLruCache$Entry;Lcom/jakewharton/disklrucache/DiskLruCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jakewharton/disklrucache/DiskLruCache;
    .param p2, "x1"    # Lcom/jakewharton/disklrucache/DiskLruCache$Entry;
    .param p3, "x2"    # Lcom/jakewharton/disklrucache/DiskLruCache$1;

    .prologue
    .line 721
    invoke-direct {p0, p1, p2}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;-><init>(Lcom/jakewharton/disklrucache/DiskLruCache;Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/jakewharton/disklrucache/DiskLruCache$Editor;)Lcom/jakewharton/disklrucache/DiskLruCache$Entry;
    .locals 1
    .param p0, "x0"    # Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    .prologue
    .line 721
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->entry:Lcom/jakewharton/disklrucache/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/jakewharton/disklrucache/DiskLruCache$Editor;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    .prologue
    .line 721
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->written:[Z

    return-object v0
.end method

.method static synthetic access$2302(Lcom/jakewharton/disklrucache/DiskLruCache$Editor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    .param p1, "x1"    # Z

    .prologue
    .line 721
    iput-boolean p1, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->hasErrors:Z

    return p1
.end method


# virtual methods
.method public abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 824
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->this$0:Lcom/jakewharton/disklrucache/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/jakewharton/disklrucache/DiskLruCache;->access$2200(Lcom/jakewharton/disklrucache/DiskLruCache;Lcom/jakewharton/disklrucache/DiskLruCache$Editor;Z)V

    .line 825
    return-void
.end method

.method public abortUnlessCommitted()V
    .locals 1

    .prologue
    .line 828
    iget-boolean v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->committed:Z

    if-nez v0, :cond_0

    .line 830
    :try_start_0
    invoke-virtual {p0}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 831
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public commit()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 810
    iget-boolean v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->hasErrors:Z

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->this$0:Lcom/jakewharton/disklrucache/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/jakewharton/disklrucache/DiskLruCache;->access$2200(Lcom/jakewharton/disklrucache/DiskLruCache;Lcom/jakewharton/disklrucache/DiskLruCache$Editor;Z)V

    .line 812
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->this$0:Lcom/jakewharton/disklrucache/DiskLruCache;

    iget-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->entry:Lcom/jakewharton/disklrucache/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->access$1100(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jakewharton/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 816
    :goto_0
    iput-boolean v2, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->committed:Z

    .line 817
    return-void

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->this$0:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-static {v0, p0, v2}, Lcom/jakewharton/disklrucache/DiskLruCache;->access$2200(Lcom/jakewharton/disklrucache/DiskLruCache;Lcom/jakewharton/disklrucache/DiskLruCache$Editor;Z)V

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 757
    invoke-virtual {p0, p1}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 758
    .local v0, "in":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache;->access$1700(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newInputStream(I)Ljava/io/InputStream;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 737
    iget-object v3, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->this$0:Lcom/jakewharton/disklrucache/DiskLruCache;

    monitor-enter v3

    .line 738
    :try_start_0
    iget-object v2, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->entry:Lcom/jakewharton/disklrucache/DiskLruCache$Entry;

    invoke-static {v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->access$700(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    move-result-object v2

    if-eq v2, p0, :cond_0

    .line 739
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 749
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 741
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->entry:Lcom/jakewharton/disklrucache/DiskLruCache$Entry;

    invoke-static {v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->access$600(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 742
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 747
    :goto_0
    return-object v1

    .line 745
    :cond_1
    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->entry:Lcom/jakewharton/disklrucache/DiskLruCache$Entry;

    invoke-virtual {v4, p1}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v3

    move-object v1, v2

    goto :goto_0

    .line 746
    :catch_0
    move-exception v0

    .line 747
    .local v0, "e":Ljava/io/FileNotFoundException;
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .locals 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 769
    iget-object v5, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->this$0:Lcom/jakewharton/disklrucache/DiskLruCache;

    monitor-enter v5

    .line 770
    :try_start_0
    iget-object v4, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->entry:Lcom/jakewharton/disklrucache/DiskLruCache$Entry;

    invoke-static {v4}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->access$700(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    move-result-object v4

    if-eq v4, p0, :cond_0

    .line 771
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 791
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 773
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->entry:Lcom/jakewharton/disklrucache/DiskLruCache$Entry;

    invoke-static {v4}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->access$600(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 774
    iget-object v4, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->written:[Z

    const/4 v6, 0x1

    aput-boolean v6, v4, p1

    .line 776
    :cond_1
    iget-object v4, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->entry:Lcom/jakewharton/disklrucache/DiskLruCache$Entry;

    invoke-virtual {v4, p1}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 779
    .local v0, "dirtyFile":Ljava/io/File;
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 790
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_3
    new-instance v4, Lcom/jakewharton/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v3, v6}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/jakewharton/disklrucache/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/jakewharton/disklrucache/DiskLruCache$1;)V

    monitor-exit v5

    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    :goto_1
    return-object v4

    .line 780
    :catch_0
    move-exception v1

    .line 782
    .local v1, "e":Ljava/io/FileNotFoundException;
    iget-object v4, p0, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->this$0:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-static {v4}, Lcom/jakewharton/disklrucache/DiskLruCache;->access$1900(Lcom/jakewharton/disklrucache/DiskLruCache;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 784
    :try_start_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 785
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 787
    .local v2, "e2":Ljava/io/FileNotFoundException;
    :try_start_5
    invoke-static {}, Lcom/jakewharton/disklrucache/DiskLruCache;->access$2000()Ljava/io/OutputStream;

    move-result-object v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public set(ILjava/lang/String;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 796
    const/4 v0, 0x0

    .line 798
    .local v0, "writer":Ljava/io/Writer;
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v2

    sget-object v3, Lcom/jakewharton/disklrucache/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    .end local v0    # "writer":Ljava/io/Writer;
    .local v1, "writer":Ljava/io/Writer;
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 801
    invoke-static {v1}, Lcom/jakewharton/disklrucache/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 803
    return-void

    .line 801
    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v0    # "writer":Ljava/io/Writer;
    :catchall_0
    move-exception v2

    :goto_0
    invoke-static {v0}, Lcom/jakewharton/disklrucache/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    .end local v0    # "writer":Ljava/io/Writer;
    .restart local v1    # "writer":Ljava/io/Writer;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v0    # "writer":Ljava/io/Writer;
    goto :goto_0
.end method
