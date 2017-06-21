.class Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter$3;
.super Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder;
.source "ChatMembersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder",
        "<",
        "Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder$IconPrefInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;Landroid/view/ViewGroup;Lcom/vkcoffee/android/functions/VoidF1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 635
    .local p3, "clickFunk":Lcom/vkcoffee/android/functions/VoidF1;, "Lcom/vkcoffee/android/functions/VoidF1<Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder$IconPrefInfo;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter$3;->this$1:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;

    invoke-direct {p0, p2, p3}, Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder;-><init>(Landroid/view/ViewGroup;Lcom/vkcoffee/android/functions/VoidF1;)V

    return-void
.end method


# virtual methods
.method protected onViewInit()V
    .locals 5

    .prologue
    .line 638
    invoke-super {p0}, Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder;->onViewInit()V

    .line 639
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter$3;->text:Landroid/widget/TextView;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter$3;->text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter$3;->text:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter$3;->text:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 640
    return-void
.end method
