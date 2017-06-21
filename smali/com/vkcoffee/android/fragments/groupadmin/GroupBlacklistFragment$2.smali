.class Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment$2;
.super Lcom/vkcoffee/android/api/SimpleListCallback;
.source "GroupBlacklistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleListCallback",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;Lme/grishka/appkit/fragments/BaseRecyclerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;

    .prologue
    .line 109
    .local p2, "fragment":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<Lcom/vkcoffee/android/UserProfile;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleListCallback;-><init>(Lme/grishka/appkit/fragments/BaseRecyclerFragment;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/data/VKList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/data/VKList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "users":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/UserProfile;>;"
    const/4 v8, 0x0

    .line 112
    invoke-virtual {p1}, Lcom/vkcoffee/android/data/VKList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/UserProfile;

    .line 113
    .local v2, "u":Lcom/vkcoffee/android/UserProfile;
    iget-object v3, v2, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v5, "ban_admin"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    .line 114
    .local v0, "admin":Lcom/vkcoffee/android/UserProfile;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;

    iget-boolean v3, v0, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v3, :cond_0

    const v3, 0x7f080065

    :goto_1
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v5, v3, v6}, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 115
    .local v1, "subtitle":Landroid/text/SpannableStringBuilder;
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const v5, -0xb88b58

    invoke-direct {v3, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    iget-object v6, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v1, v3, v5, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 116
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 117
    iget-object v3, v2, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v5, "ban_date"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/vkcoffee/android/TimeUtils;->langDate(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 118
    invoke-virtual {v2, v1}, Lcom/vkcoffee/android/UserProfile;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 114
    .end local v1    # "subtitle":Landroid/text/SpannableStringBuilder;
    :cond_0
    const v3, 0x7f080066

    goto :goto_1

    .line 120
    .end local v0    # "admin":Lcom/vkcoffee/android/UserProfile;
    .end local v2    # "u":Lcom/vkcoffee/android/UserProfile;
    :cond_1
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/SimpleListCallback;->success(Lcom/vkcoffee/android/data/VKList;)V

    .line 121
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 109
    check-cast p1, Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/groupadmin/GroupBlacklistFragment$2;->success(Lcom/vkcoffee/android/data/VKList;)V

    return-void
.end method
