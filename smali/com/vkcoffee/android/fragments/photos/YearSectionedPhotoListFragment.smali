.class public Lcom/vkcoffee/android/fragments/photos/YearSectionedPhotoListFragment;
.super Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;
.source "YearSectionedPhotoListFragment.java"


# instance fields
.field private calendar:Ljava/util/Calendar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;-><init>()V

    .line 14
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/photos/YearSectionedPhotoListFragment;->calendar:Ljava/util/Calendar;

    return-void
.end method

.method private getYear(I)I
    .locals 6
    .param p1, "time"    # I

    .prologue
    .line 17
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/YearSectionedPhotoListFragment;->calendar:Ljava/util/Calendar;

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 18
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/YearSectionedPhotoListFragment;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public onAppendItems(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/Photo;>;"
    const/4 v7, 0x0

    .line 23
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/photos/YearSectionedPhotoListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    move v3, v7

    .line 24
    .local v3, "prevYear":I
    :goto_0
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/photos/YearSectionedPhotoListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_3

    const/4 v0, 0x0

    .line 25
    .local v0, "currentSection":Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;
    :goto_1
    if-eqz v0, :cond_4

    iget v1, v0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;->end:I

    .line 26
    .local v1, "i":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/Photo;

    .line 27
    .local v2, "item":Lcom/vkcoffee/android/Photo;
    iget v8, v2, Lcom/vkcoffee/android/Photo;->date:I

    invoke-direct {p0, v8}, Lcom/vkcoffee/android/fragments/photos/YearSectionedPhotoListFragment;->getYear(I)I

    move-result v5

    .line 28
    .local v5, "year":I
    if-eq v5, v3, :cond_1

    .line 29
    if-eqz v0, :cond_0

    .line 30
    new-instance v8, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;

    iget v9, v0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;->start:I

    iget v10, v0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;->start:I

    sub-int v10, v1, v10

    invoke-direct {v8, p0, v9, v10}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;II)V

    iput-object v8, v0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;->adapter:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;

    .line 31
    iput v1, v0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;->end:I

    .line 32
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/photos/YearSectionedPhotoListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 33
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/photos/YearSectionedPhotoListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_0
    new-instance v4, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;-><init>(Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;)V

    .line 37
    .local v4, "s":Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;
    const v8, 0x7f0805bf

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-virtual {p0, v8, v9}, Lcom/vkcoffee/android/fragments/photos/YearSectionedPhotoListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;->title:Ljava/lang/String;

    .line 38
    new-instance v8, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$SectionHeaderAdapter;

    iget-object v9, v4, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;->title:Ljava/lang/String;

    invoke-direct {v8, p0, v9}, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$SectionHeaderAdapter;-><init>(Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;Ljava/lang/String;)V

    iput-object v8, v4, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;->headerAdapter:Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$SectionHeaderAdapter;

    .line 39
    iput v1, v4, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;->start:I

    .line 40
    move-object v0, v4

    .line 42
    .end local v4    # "s":Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;
    :cond_1
    move v3, v5

    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    goto :goto_3

    .line 23
    .end local v0    # "currentSection":Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/vkcoffee/android/Photo;
    .end local v3    # "prevYear":I
    .end local v5    # "year":I
    :cond_2
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/photos/YearSectionedPhotoListFragment;->data:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/photos/YearSectionedPhotoListFragment;->sections:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/vkcoffee/android/fragments/photos/YearSectionedPhotoListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;

    iget v6, v6, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;->end:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/Photo;

    iget v6, v6, Lcom/vkcoffee/android/Photo;->date:I

    invoke-direct {p0, v6}, Lcom/vkcoffee/android/fragments/photos/YearSectionedPhotoListFragment;->getYear(I)I

    move-result v3

    goto/16 :goto_0

    .line 24
    .restart local v3    # "prevYear":I
    :cond_3
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/photos/YearSectionedPhotoListFragment;->sections:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/photos/YearSectionedPhotoListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;

    move-object v0, v6

    goto/16 :goto_1

    .restart local v0    # "currentSection":Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;
    :cond_4
    move v1, v7

    .line 25
    goto/16 :goto_2

    .line 45
    .restart local v1    # "i":I
    :cond_5
    if-eqz v0, :cond_6

    .line 46
    new-instance v6, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;

    iget v7, v0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;->start:I

    iget v8, v0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;->start:I

    sub-int v8, v1, v8

    invoke-direct {v6, p0, v7, v8}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;II)V

    iput-object v6, v0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;->adapter:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;

    .line 47
    iput v1, v0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;->end:I

    .line 48
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/photos/YearSectionedPhotoListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 49
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/photos/YearSectionedPhotoListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_6
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;->onAppendItems(Ljava/util/List;)V

    .line 53
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/photos/YearSectionedPhotoListFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    invoke-virtual {v6}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->removeAllAdapters()V

    .line 54
    iget-boolean v6, p0, Lcom/vkcoffee/android/fragments/photos/YearSectionedPhotoListFragment;->showAlbumHeader:Z

    if-eqz v6, :cond_7

    .line 55
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/photos/YearSectionedPhotoListFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    new-instance v7, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$HeaderAdapter;

    invoke-direct {v7, p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$HeaderAdapter;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)V

    invoke-virtual {v6, v7}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->addAdapter(Lme/grishka/appkit/views/UsableRecyclerView$Adapter;)V

    .line 57
    :cond_7
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/photos/YearSectionedPhotoListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;

    .line 58
    .restart local v4    # "s":Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/photos/YearSectionedPhotoListFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    iget-object v8, v4, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;->headerAdapter:Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$SectionHeaderAdapter;

    invoke-virtual {v7, v8}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->addAdapter(Lme/grishka/appkit/views/UsableRecyclerView$Adapter;)V

    .line 59
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/photos/YearSectionedPhotoListFragment;->adapter:Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    iget-object v8, v4, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;->adapter:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;

    invoke-virtual {v7, v8}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->addAdapter(Lme/grishka/appkit/views/UsableRecyclerView$Adapter;)V

    goto :goto_4

    .line 61
    .end local v4    # "s":Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;
    :cond_8
    return-void
.end method

.method public onClearItems()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;->onClearItems()V

    .line 66
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/YearSectionedPhotoListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 67
    return-void
.end method
