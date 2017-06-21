.class final Lcom/vkcoffee/android/data/Messages$6;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/data/Messages;->getUnreadCount(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$res:[I


# direct methods
.method constructor <init>([I)V
    .locals 0

    .prologue
    .line 607
    iput-object p1, p0, Lcom/vkcoffee/android/data/Messages$6;->val$res:[I

    invoke-direct {p0}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "count"    # Ljava/lang/Integer;

    .prologue
    .line 610
    iget-object v0, p0, Lcom/vkcoffee/android/data/Messages$6;->val$res:[I

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 611
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 607
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/data/Messages$6;->success(Ljava/lang/Integer;)V

    return-void
.end method
