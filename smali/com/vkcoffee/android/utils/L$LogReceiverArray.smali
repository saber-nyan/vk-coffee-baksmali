.class Lcom/vkcoffee/android/utils/L$LogReceiverArray;
.super Ljava/lang/Object;
.source "L.java"

# interfaces
.implements Lcom/vkcoffee/android/utils/L$LogReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/utils/L;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogReceiverArray"
.end annotation


# instance fields
.field private logReceivers:[Lcom/vkcoffee/android/utils/L$LogReceiver;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/vkcoffee/android/utils/L$LogReceiver;)V
    .locals 0
    .param p1, "receivers"    # [Lcom/vkcoffee/android/utils/L$LogReceiver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/vkcoffee/android/utils/L$LogReceiverArray;->logReceivers:[Lcom/vkcoffee/android/utils/L$LogReceiver;

    .line 80
    return-void
.end method


# virtual methods
.method public log(Lcom/vkcoffee/android/utils/L$LogType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Lcom/vkcoffee/android/utils/L$LogType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "msg"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 84
    iget-object v2, p0, Lcom/vkcoffee/android/utils/L$LogReceiverArray;->logReceivers:[Lcom/vkcoffee/android/utils/L$LogReceiver;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 85
    .local v0, "receiver":Lcom/vkcoffee/android/utils/L$LogReceiver;
    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0, p1, p2, p3}, Lcom/vkcoffee/android/utils/L$LogReceiver;->log(Lcom/vkcoffee/android/utils/L$LogType;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "receiver":Lcom/vkcoffee/android/utils/L$LogReceiver;
    :cond_1
    return-void
.end method

.method public log(Lcom/vkcoffee/android/utils/L$LogType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "type"    # Lcom/vkcoffee/android/utils/L$LogType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "msg"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "tr"    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 93
    iget-object v2, p0, Lcom/vkcoffee/android/utils/L$LogReceiverArray;->logReceivers:[Lcom/vkcoffee/android/utils/L$LogReceiver;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 94
    .local v0, "receiver":Lcom/vkcoffee/android/utils/L$LogReceiver;
    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/vkcoffee/android/utils/L$LogReceiver;->log(Lcom/vkcoffee/android/utils/L$LogType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v0    # "receiver":Lcom/vkcoffee/android/utils/L$LogReceiver;
    :cond_1
    return-void
.end method
