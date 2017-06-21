.class Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$6;
.super Ljava/lang/Object;
.source "LinksFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->confirmAndDelete(Lcom/vkcoffee/android/UserProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

.field final synthetic val$link:Lcom/vkcoffee/android/UserProfile;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;Lcom/vkcoffee/android/UserProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$6;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$6;->val$link:Lcom/vkcoffee/android/UserProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 275
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$6;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$6;->val$link:Lcom/vkcoffee/android/UserProfile;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->access$1000(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;Lcom/vkcoffee/android/UserProfile;)V

    .line 276
    return-void
.end method
