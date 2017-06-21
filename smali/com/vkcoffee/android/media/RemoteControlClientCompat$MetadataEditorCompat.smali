.class public Lcom/vkcoffee/android/media/RemoteControlClientCompat$MetadataEditorCompat;
.super Ljava/lang/Object;
.source "RemoteControlClientCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/media/RemoteControlClientCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MetadataEditorCompat"
.end annotation


# static fields
.field public static final METADATA_KEY_ARTWORK:I = 0x64


# instance fields
.field private mActualMetadataEditor:Ljava/lang/Object;

.field private mApplyMethod:Ljava/lang/reflect/Method;

.field private mClearMethod:Ljava/lang/reflect/Method;

.field private mPutBitmapMethod:Ljava/lang/reflect/Method;

.field private mPutLongMethod:Ljava/lang/reflect/Method;

.field private mPutStringMethod:Ljava/lang/reflect/Method;

.field final synthetic this$0:Lcom/vkcoffee/android/media/RemoteControlClientCompat;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/media/RemoteControlClientCompat;Ljava/lang/Object;)V
    .locals 6
    .param p1, "this$0"    # Lcom/vkcoffee/android/media/RemoteControlClientCompat;
    .param p2, "actualMetadataEditor"    # Ljava/lang/Object;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/vkcoffee/android/media/RemoteControlClientCompat$MetadataEditorCompat;->this$0:Lcom/vkcoffee/android/media/RemoteControlClientCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    invoke-static {}, Lcom/vkcoffee/android/media/RemoteControlClientCompat;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p2, :cond_0

    .line 152
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Remote Control API\'s exist, should not be given a null MetadataEditor"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    :cond_0
    invoke-static {}, Lcom/vkcoffee/android/media/RemoteControlClientCompat;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 159
    .local v1, "metadataEditorClass":Ljava/lang/Class;
    :try_start_0
    const-string/jumbo v2, "putString"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/media/RemoteControlClientCompat$MetadataEditorCompat;->mPutStringMethod:Ljava/lang/reflect/Method;

    .line 161
    const-string/jumbo v2, "putBitmap"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/graphics/Bitmap;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/media/RemoteControlClientCompat$MetadataEditorCompat;->mPutBitmapMethod:Ljava/lang/reflect/Method;

    .line 163
    const-string/jumbo v2, "putLong"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/media/RemoteControlClientCompat$MetadataEditorCompat;->mPutLongMethod:Ljava/lang/reflect/Method;

    .line 165
    const-string/jumbo v2, "clear"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/media/RemoteControlClientCompat$MetadataEditorCompat;->mClearMethod:Ljava/lang/reflect/Method;

    .line 166
    const-string/jumbo v2, "apply"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/media/RemoteControlClientCompat$MetadataEditorCompat;->mApplyMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v1    # "metadataEditorClass":Ljava/lang/Class;
    :cond_1
    iput-object p2, p0, Lcom/vkcoffee/android/media/RemoteControlClientCompat$MetadataEditorCompat;->mActualMetadataEditor:Ljava/lang/Object;

    .line 172
    return-void

    .line 167
    .restart local v1    # "metadataEditorClass":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/media/RemoteControlClientCompat;Ljava/lang/Object;Lcom/vkcoffee/android/media/RemoteControlClientCompat$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/media/RemoteControlClientCompat;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lcom/vkcoffee/android/media/RemoteControlClientCompat$1;

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/media/RemoteControlClientCompat$MetadataEditorCompat;-><init>(Lcom/vkcoffee/android/media/RemoteControlClientCompat;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 4

    .prologue
    .line 277
    invoke-static {}, Lcom/vkcoffee/android/media/RemoteControlClientCompat;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    :try_start_0
    iget-object v2, p0, Lcom/vkcoffee/android/media/RemoteControlClientCompat$MetadataEditorCompat;->mApplyMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/vkcoffee/android/media/RemoteControlClientCompat$MetadataEditorCompat;->mActualMetadataEditor:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :cond_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 261
    invoke-static {}, Lcom/vkcoffee/android/media/RemoteControlClientCompat;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    :try_start_0
    iget-object v2, p0, Lcom/vkcoffee/android/media/RemoteControlClientCompat$MetadataEditorCompat;->mClearMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/vkcoffee/android/media/RemoteControlClientCompat$MetadataEditorCompat;->mActualMetadataEditor:Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :cond_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public putBitmap(ILandroid/graphics/Bitmap;)Lcom/vkcoffee/android/media/RemoteControlClientCompat$MetadataEditorCompat;
    .locals 6
    .param p1, "key"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 219
    invoke-static {}, Lcom/vkcoffee/android/media/RemoteControlClientCompat;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/media/RemoteControlClientCompat$MetadataEditorCompat;->mPutBitmapMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/vkcoffee/android/media/RemoteControlClientCompat$MetadataEditorCompat;->mActualMetadataEditor:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_0
    return-object p0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public putLong(IJ)Lcom/vkcoffee/android/media/RemoteControlClientCompat$MetadataEditorCompat;
    .locals 6
    .param p1, "key"    # I
    .param p2, "value"    # J

    .prologue
    .line 246
    invoke-static {}, Lcom/vkcoffee/android/media/RemoteControlClientCompat;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/media/RemoteControlClientCompat$MetadataEditorCompat;->mPutLongMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/vkcoffee/android/media/RemoteControlClientCompat$MetadataEditorCompat;->mActualMetadataEditor:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :cond_0
    return-object p0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public putString(ILjava/lang/String;)Lcom/vkcoffee/android/media/RemoteControlClientCompat$MetadataEditorCompat;
    .locals 6
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 197
    invoke-static {}, Lcom/vkcoffee/android/media/RemoteControlClientCompat;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/media/RemoteControlClientCompat$MetadataEditorCompat;->mPutStringMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/vkcoffee/android/media/RemoteControlClientCompat$MetadataEditorCompat;->mActualMetadataEditor:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_0
    return-object p0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
