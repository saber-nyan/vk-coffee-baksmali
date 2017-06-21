.class Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat$2;
.super Ljava/lang/Object;
.source "PreferenceFragmentCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat$2;->this$0:Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat$2;->this$0:Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat$2;->this$0:Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/preference/PreferenceFragmentCompat;->mList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->focusableViewAvailable(Landroid/view/View;)V

    .line 60
    return-void
.end method
