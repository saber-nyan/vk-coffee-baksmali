.class public Lcom/vkcoffee/android/upload/UploadUtils;
.super Ljava/lang/Object;
.source "UploadUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/upload/UploadUtils$CopiesListener;
    }
.end annotation


# static fields
.field public static final UNKNOWN:Ljava/lang/String; = "unknown"

.field private static handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/vkcoffee/android/upload/UploadUtils;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/vkcoffee/android/upload/UploadUtils;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static doCopyFromRestrictedProviderAsync(Ljava/util/ArrayList;Lcom/vkcoffee/android/upload/UploadUtils$CopiesListener;Landroid/content/Context;)V
    .locals 2
    .param p0    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "copiesListener"    # Lcom/vkcoffee/android/upload/UploadUtils$CopiesListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "ctx"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/vkcoffee/android/upload/UploadUtils$CopiesListener;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p1}, Lcom/vkcoffee/android/upload/UploadUtils$CopiesListener;->onStart()V

    .line 67
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkcoffee/android/upload/UploadUtils$1;

    invoke-direct {v1, p2, p0, p1}, Lcom/vkcoffee/android/upload/UploadUtils$1;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/vkcoffee/android/upload/UploadUtils$CopiesListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 112
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 113
    return-void
.end method

.method public static getRealFileName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 59
    invoke-static {p0}, Lcom/vkcoffee/android/upload/UploadUtils;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string/jumbo v1, "unknown"

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p0, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 42
    const-string/jumbo v0, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 54
    :goto_0
    return-object v8

    .line 46
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    .line 47
    .local v2, "proj":[Ljava/lang/String;
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 48
    .local v7, "cursor":Landroid/database/Cursor;
    const-string/jumbo v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 49
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 50
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 51
    .local v8, "path":Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    .end local v2    # "proj":[Ljava/lang/String;
    .end local v6    # "column_index":I
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "path":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 54
    .local v9, "x":Ljava/lang/Exception;
    const-string/jumbo v8, "unknown"

    goto :goto_0
.end method
