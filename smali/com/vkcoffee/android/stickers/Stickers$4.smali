.class Lcom/vkcoffee/android/stickers/Stickers$4;
.super Ljava/lang/Object;
.source "Stickers.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/stickers/Stickers;->markUpdatesAsViewed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/api/Callback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/stickers/Stickers;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/stickers/Stickers;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/stickers/Stickers;

    .prologue
    .line 502
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/Stickers$4;->this$0:Lcom/vkcoffee/android/stickers/Stickers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 0
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 511
    return-void
.end method

.method public success(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 505
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/Stickers$4;->this$0:Lcom/vkcoffee/android/stickers/Stickers;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/stickers/Stickers;->setNumUpdates(I)V

    .line 506
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 502
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/stickers/Stickers$4;->success(Ljava/lang/Boolean;)V

    return-void
.end method
