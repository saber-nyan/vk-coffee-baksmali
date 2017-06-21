.class final Lcom/vkcoffee/android/data/Messages$14;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/data/Messages;->delete(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ids:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1246
    iput-object p2, p0, Lcom/vkcoffee/android/data/Messages$14;->val$ids:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 1

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/vkcoffee/android/data/Messages$14;->val$ids:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/vkcoffee/android/cache/Cache;->deleteMessages(Ljava/util/List;)V

    .line 1250
    return-void
.end method
