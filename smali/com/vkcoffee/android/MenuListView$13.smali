.class Lcom/vkcoffee/android/MenuListView$13;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/MenuListView;->updateBirthdays()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/MenuListView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/MenuListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/MenuListView$13;->this$0:Lcom/vkcoffee/android/MenuListView;

    .line 1641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/MenuListView$13;)Lcom/vkcoffee/android/MenuListView;
    .locals 1

    .prologue
    .line 1641
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$13;->this$0:Lcom/vkcoffee/android/MenuListView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 1643
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    const-string v15, "Update birthdays"

    invoke-virtual {v14, v15}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1644
    const/4 v2, 0x0

    .line 1645
    .local v2, "_rtext":Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/vkcoffee/android/cache/Cache;->getBirthdays(J)Ljava/util/ArrayList;

    move-result-object v3

    .line 1646
    .local v3, "bdays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/MenuListView$13;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v14}, Lcom/vkcoffee/android/MenuListView;->access$12(Lcom/vkcoffee/android/MenuListView;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 1647
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_1

    .line 1648
    const/high16 v14, 0x42200000    # 40.0f

    invoke-static {v14}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v10

    .line 1649
    .local v10, "psize":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1650
    .local v8, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-direct {v4, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 1651
    .local v4, "date":Ljava/util/Date;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/Date;->getDate()I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/util/Date;->getMonth()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1652
    .local v12, "today":Ljava/lang/String;
    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/32 v16, 0x5265c00

    add-long v14, v14, v16

    invoke-direct {v5, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 1653
    .local v5, "date2":Ljava/util/Date;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/Date;->getDate()I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/util/Date;->getMonth()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1654
    .local v13, "yesterday":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1655
    .local v6, "hasToday":Z
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1656
    .local v7, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_2

    .line 1666
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/MenuListView$13;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v14}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    if-eqz v6, :cond_6

    const v14, 0x7f0800a6

    :goto_1
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, ", "

    move-object/from16 v0, v18

    invoke-static {v0, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v15, v14, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    invoke-static {v14, v15}, Lcom/vkcoffee/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1667
    sget-boolean v14, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v14, :cond_1

    if-nez v6, :cond_1

    .line 1668
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/MenuListView$13;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v14}, Lcom/vkcoffee/android/MenuListView;->access$12(Lcom/vkcoffee/android/MenuListView;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 1671
    .end local v4    # "date":Ljava/util/Date;
    .end local v5    # "date2":Ljava/util/Date;
    .end local v6    # "hasToday":Z
    .end local v7    # "it":Ljava/util/Iterator;
    .end local v8    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "psize":I
    .end local v12    # "today":Ljava/lang/String;
    .end local v13    # "yesterday":Ljava/lang/String;
    :cond_1
    move-object v11, v2

    .line 1672
    .local v11, "rtext":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/MenuListView$13;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v14}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v14

    check-cast v14, Landroid/app/Activity;

    new-instance v15, Lcom/vkcoffee/android/MenuListView$13$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v11}, Lcom/vkcoffee/android/MenuListView$13$1;-><init>(Lcom/vkcoffee/android/MenuListView$13;Ljava/lang/CharSequence;)V

    invoke-virtual {v14, v15}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1678
    return-void

    .line 1657
    .end local v11    # "rtext":Ljava/lang/CharSequence;
    .restart local v4    # "date":Ljava/util/Date;
    .restart local v5    # "date2":Ljava/util/Date;
    .restart local v6    # "hasToday":Z
    .restart local v7    # "it":Ljava/util/Iterator;
    .restart local v8    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "psize":I
    .restart local v12    # "today":Ljava/lang/String;
    .restart local v13    # "yesterday":Ljava/lang/String;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkcoffee/android/UserProfile;

    .line 1658
    .local v9, "p":Lcom/vkcoffee/android/UserProfile;
    iget-object v14, v9, Lcom/vkcoffee/android/UserProfile;->bdate:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1659
    const/4 v6, 0x1

    .line 1661
    :cond_3
    if-eqz v6, :cond_4

    iget-object v14, v9, Lcom/vkcoffee/android/UserProfile;->bdate:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_5

    :cond_4
    if-nez v6, :cond_0

    .line 1662
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "[id"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v15, v9, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "|"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v9, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1663
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/MenuListView$13;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v14}, Lcom/vkcoffee/android/MenuListView;->access$12(Lcom/vkcoffee/android/MenuListView;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1666
    .end local v9    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_6
    const v14, 0x7f0800a8

    goto/16 :goto_1
.end method
