.class public final Lcom/vkcoffee/android/cache/FileLruCache$Entry;
.super Ljava/lang/Object;
.source "FileLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/cache/FileLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Entry"
.end annotation


# instance fields
.field public final file:Ljava/io/File;

.field public final key:Ljava/lang/String;

.field lastRecentlyUsed:J

.field public final size:J

.field final synthetic this$0:Lcom/vkcoffee/android/cache/FileLruCache;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/cache/FileLruCache;Ljava/lang/String;JJ)V
    .locals 3
    .param p1, "this$0"    # Lcom/vkcoffee/android/cache/FileLruCache;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "size"    # J
    .param p5, "lastRecentlyUsed"    # J

    .prologue
    .line 164
    iput-object p1, p0, Lcom/vkcoffee/android/cache/FileLruCache$Entry;->this$0:Lcom/vkcoffee/android/cache/FileLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p2, p0, Lcom/vkcoffee/android/cache/FileLruCache$Entry;->key:Ljava/lang/String;

    .line 166
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/vkcoffee/android/cache/FileLruCache;->mRootPath:Ljava/io/File;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vkcoffee/android/cache/FileLruCache$Entry;->file:Ljava/io/File;

    .line 167
    iput-wide p3, p0, Lcom/vkcoffee/android/cache/FileLruCache$Entry;->size:J

    .line 168
    iput-wide p5, p0, Lcom/vkcoffee/android/cache/FileLruCache$Entry;->lastRecentlyUsed:J

    .line 169
    return-void
.end method
