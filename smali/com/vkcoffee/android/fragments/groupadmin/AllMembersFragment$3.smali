.class Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$3;
.super Ljava/lang/Object;
.source "AllMembersFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$3;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 155
    return-void
.end method

.method public onQueryConfirmed(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$3;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;->access$800(Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public onQuerySubmitted(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment$3;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;->access$800(Lcom/vkcoffee/android/fragments/groupadmin/AllMembersFragment;Ljava/lang/String;)V

    .line 150
    return-void
.end method
