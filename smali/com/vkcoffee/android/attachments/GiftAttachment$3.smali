.class Lcom/vkcoffee/android/attachments/GiftAttachment$3;
.super Ljava/lang/Object;
.source "GiftAttachment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/attachments/GiftAttachment;->getFullView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/attachments/GiftAttachment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/attachments/GiftAttachment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/attachments/GiftAttachment;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/vkcoffee/android/attachments/GiftAttachment$3;->this$0:Lcom/vkcoffee/android/attachments/GiftAttachment;

    iput-object p2, p0, Lcom/vkcoffee/android/attachments/GiftAttachment$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    const-class v1, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/vkcoffee/android/attachments/GiftAttachment$3;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v2, v0}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 99
    return-void
.end method
