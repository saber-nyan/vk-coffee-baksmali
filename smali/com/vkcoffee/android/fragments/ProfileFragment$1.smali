.class Lcom/vkcoffee/android/fragments/ProfileFragment$1;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x5

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v13, 0x0

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 221
    .local v0, "act":Ljava/lang/String;
    const-string v6, "message"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 222
    new-instance v6, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v7}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment;)I

    move-result v7

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v8

    iget-object v8, v8, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v8, v8, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;-><init>(ILjava/lang/String;)V

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v7}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v7

    iget-object v7, v7, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v7, v7, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->setPhoto(Ljava/lang/CharSequence;)Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v7}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->go(Landroid/content/Context;)V

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    const-string v6, "post"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 224
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$3(Lcom/vkcoffee/android/fragments/ProfileFragment;)V

    goto :goto_0

    .line 225
    :cond_2
    const-string v6, "add"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 226
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$4(Lcom/vkcoffee/android/fragments/ProfileFragment;)V

    goto :goto_0

    .line 227
    :cond_3
    const-string v6, "accept"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 228
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$5(Lcom/vkcoffee/android/fragments/ProfileFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_4
    const-string v6, "cancel"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 230
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$6(Lcom/vkcoffee/android/fragments/ProfileFragment;)V

    goto :goto_0

    .line 231
    :cond_5
    const-string v6, "join"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 232
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v6, v10}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$7(Lcom/vkcoffee/android/fragments/ProfileFragment;Z)V

    goto :goto_0

    .line 233
    :cond_6
    const-string v6, "join_unsure"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 234
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v6, v13}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$7(Lcom/vkcoffee/android/fragments/ProfileFragment;Z)V

    goto :goto_0

    .line 235
    :cond_7
    const-string v6, "leave"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 236
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$8(Lcom/vkcoffee/android/fragments/ProfileFragment;)V

    goto :goto_0

    .line 237
    :cond_8
    const-string v6, "photo"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 238
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v6}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lcom/vkcoffee/android/PostPhotoActivity;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "option"

    invoke-virtual {v2, v6, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 240
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v6, v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 241
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_9
    const-string v6, "edit"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 242
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v6}, Lcom/vkcoffee/android/fragments/ProfileFragment;->editProfile()V

    goto/16 :goto_0

    .line 243
    :cond_a
    const-string v6, "options"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 244
    new-instance v4, Landroid/widget/PopupMenu;

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v6}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v6, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 245
    .local v4, "pm":Landroid/widget/PopupMenu;
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment;)I

    move-result v6

    if-lez v6, :cond_10

    .line 246
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v6

    iget v6, v6, Lcom/vkcoffee/android/api/ExtendedUserProfile;->friendStatus:I

    if-ne v6, v9, :cond_d

    .line 248
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v6

    const v7, 0x7f080152

    invoke-interface {v6, v13, v13, v13, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 249
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v6

    const v7, 0x7f080120

    invoke-interface {v6, v13, v10, v13, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 250
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    .line 251
    .local v3, "menu":Landroid/view/Menu;
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 252
    .local v5, "profileFragment":Lcom/vkcoffee/android/fragments/ProfileFragment;
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v6

    iget-boolean v6, v6, Lcom/vkcoffee/android/api/ExtendedUserProfile;->isHiddenFromFeed:Z

    if-eqz v6, :cond_c

    .line 253
    const v1, 0x7f0804e9

    .line 257
    .local v1, "i":I
    :goto_1
    const/16 v6, 0xa

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v8

    iget-object v8, v8, Lcom/vkcoffee/android/api/ExtendedUserProfile;->firstNameGen:Ljava/lang/String;

    aput-object v8, v7, v13

    invoke-virtual {v5, v1, v7}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v13, v6, v13, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 283
    .end local v1    # "i":I
    .end local v3    # "menu":Landroid/view/Menu;
    .end local v5    # "profileFragment":Lcom/vkcoffee/android/fragments/ProfileFragment;
    :cond_b
    :goto_2
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v6, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$3$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/view/View;)Landroid/widget/PopupMenu$OnMenuItemClickListener;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 284
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->show()V

    goto/16 :goto_0

    .line 255
    .restart local v3    # "menu":Landroid/view/Menu;
    .restart local v5    # "profileFragment":Lcom/vkcoffee/android/fragments/ProfileFragment;
    :cond_c
    const v1, 0x7f08026a

    .restart local v1    # "i":I
    goto :goto_1

    .line 258
    .end local v1    # "i":I
    .end local v3    # "menu":Landroid/view/Menu;
    .end local v5    # "profileFragment":Lcom/vkcoffee/android/fragments/ProfileFragment;
    :cond_d
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v6

    iget v6, v6, Lcom/vkcoffee/android/api/ExtendedUserProfile;->friendStatus:I

    if-ne v6, v10, :cond_f

    .line 259
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v6

    const v7, 0x7f0803e5

    invoke-interface {v6, v13, v10, v13, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 260
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v7

    const/16 v8, 0xa

    iget-object v9, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v6

    iget-boolean v6, v6, Lcom/vkcoffee/android/api/ExtendedUserProfile;->isHiddenFromFeed:Z

    if-eqz v6, :cond_e

    const v6, 0x7f0804e9

    :goto_3
    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v11}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v11

    iget-object v11, v11, Lcom/vkcoffee/android/api/ExtendedUserProfile;->firstNameGen:Ljava/lang/String;

    aput-object v11, v10, v13

    invoke-virtual {v9, v6, v10}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v13, v8, v13, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_2

    :cond_e
    const v6, 0x7f08026a

    goto :goto_3

    .line 261
    :cond_f
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v6

    iget v6, v6, Lcom/vkcoffee/android/api/ExtendedUserProfile;->friendStatus:I

    if-ne v6, v8, :cond_b

    .line 262
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v6

    const v7, 0x7f0801a5

    invoke-interface {v6, v13, v8, v13, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 263
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v6

    const v7, 0x7f0801a6

    invoke-interface {v6, v13, v10, v13, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_2

    .line 265
    :cond_10
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v6

    iget v6, v6, Lcom/vkcoffee/android/api/ExtendedUserProfile;->friendStatus:I

    if-eq v6, v10, :cond_11

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v6

    iget v6, v6, Lcom/vkcoffee/android/api/ExtendedUserProfile;->friendStatus:I

    if-ne v6, v8, :cond_16

    .line 266
    :cond_11
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v6

    iget v6, v6, Lcom/vkcoffee/android/api/ExtendedUserProfile;->groupType:I

    if-ne v6, v10, :cond_12

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v6

    iget v6, v6, Lcom/vkcoffee/android/api/ExtendedUserProfile;->eventStartTime:I

    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCurrentTime()I

    move-result v7

    if-gt v6, v7, :cond_14

    .line 267
    :cond_12
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v7

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v6

    iget v6, v6, Lcom/vkcoffee/android/api/ExtendedUserProfile;->groupType:I

    if-eq v6, v8, :cond_13

    const v6, 0x7f080283

    :goto_4
    invoke-interface {v7, v13, v9, v13, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 271
    :goto_5
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v7

    const/16 v8, 0xa

    iget-object v9, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v6

    iget-boolean v6, v6, Lcom/vkcoffee/android/api/ExtendedUserProfile;->isHiddenFromFeed:Z

    if-eqz v6, :cond_15

    const v6, 0x7f0804e9

    :goto_6
    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    const v12, 0x7f080251

    invoke-virtual {v11, v12}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-virtual {v9, v6, v10}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v13, v8, v13, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 267
    :cond_13
    const v6, 0x7f080413

    goto :goto_4

    .line 269
    :cond_14
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v6

    const/4 v7, 0x4

    const v8, 0x7f08016e

    invoke-interface {v6, v13, v7, v13, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_5

    .line 271
    :cond_15
    const v6, 0x7f08026a

    goto :goto_6

    .line 272
    :cond_16
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v6

    iget v6, v6, Lcom/vkcoffee/android/api/ExtendedUserProfile;->friendStatus:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_17

    .line 273
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v6

    const v7, 0x7f0803e5

    invoke-interface {v6, v13, v9, v13, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 274
    :cond_17
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v6

    iget v6, v6, Lcom/vkcoffee/android/api/ExtendedUserProfile;->friendStatus:I

    if-ne v6, v11, :cond_b

    .line 275
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v6

    iget v6, v6, Lcom/vkcoffee/android/api/ExtendedUserProfile;->groupType:I

    if-ne v6, v10, :cond_18

    .line 276
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v6

    const v7, 0x7f080227

    invoke-interface {v6, v13, v11, v13, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 277
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v6

    const/4 v7, 0x6

    const v8, 0x7f080228

    invoke-interface {v6, v13, v7, v13, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 281
    :goto_7
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v6

    const v7, 0x7f080230

    invoke-interface {v6, v13, v9, v13, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 279
    :cond_18
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v6

    const v7, 0x7f08022f

    invoke-interface {v6, v13, v11, v13, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_7

    .line 285
    .end local v4    # "pm":Landroid/widget/PopupMenu;
    :cond_19
    const-string v6, "event_options"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 286
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$1;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v6, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$9(Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/view/View;)V

    goto/16 :goto_0
.end method
