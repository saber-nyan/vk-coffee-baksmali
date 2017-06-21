.class public Lcom/vkcoffee/android/data/RecentItemStore;
.super Ljava/lang/Object;
.source "RecentItemStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/data/RecentItemStore$RecentItem;
    }
.end annotation


# static fields
.field private static final ITERATION_LEN:I = 0x5


# instance fields
.field private context:Landroid/content/Context;

.field private countUses:Z

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maxItems:I

.field private prefsName:Ljava/lang/String;

.field private useCounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "max"    # I
    .param p4, "count"    # Z

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/data/RecentItemStore;->useCounts:Ljava/util/HashMap;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/data/RecentItemStore;->items:Ljava/util/ArrayList;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/data/RecentItemStore;->countUses:Z

    .line 32
    iput-object p1, p0, Lcom/vkcoffee/android/data/RecentItemStore;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/vkcoffee/android/data/RecentItemStore;->prefsName:Ljava/lang/String;

    .line 34
    iput p3, p0, Lcom/vkcoffee/android/data/RecentItemStore;->maxItems:I

    .line 35
    iput-boolean p4, p0, Lcom/vkcoffee/android/data/RecentItemStore;->countUses:Z

    .line 36
    return-void
.end method

.method private save()V
    .locals 9

    .prologue
    .line 105
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v4, "sdata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-boolean v5, p0, Lcom/vkcoffee/android/data/RecentItemStore;->countUses:Z

    if-eqz v5, :cond_0

    .line 107
    iget-object v5, p0, Lcom/vkcoffee/android/data/RecentItemStore;->useCounts:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 108
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 109
    .local v0, "i":I
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 110
    .local v1, "key":Ljava/lang/String;
    const/16 v6, 0x32

    if-lt v0, v6, :cond_1

    .line 117
    .end local v0    # "i":I
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    iget-object v5, p0, Lcom/vkcoffee/android/data/RecentItemStore;->context:Landroid/content/Context;

    const-string/jumbo v6, "emoji"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 118
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    iget-object v6, p0, Lcom/vkcoffee/android/data/RecentItemStore;->prefsName:Ljava/lang/String;

    const-string/jumbo v7, ","

    iget-boolean v8, p0, Lcom/vkcoffee/android/data/RecentItemStore;->countUses:Z

    if-eqz v8, :cond_2

    .end local v4    # "sdata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    invoke-static {v7, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 119
    return-void

    .line 113
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    .restart local v0    # "i":I
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "sdata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/vkcoffee/android/data/RecentItemStore;->useCounts:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v0, v0, 0x1

    .line 115
    goto :goto_0

    .line 118
    .end local v0    # "i":I
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v3    # "prefs":Landroid/content/SharedPreferences;
    :cond_2
    iget-object v4, p0, Lcom/vkcoffee/android/data/RecentItemStore;->items:Ljava/util/ArrayList;

    goto :goto_1
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 9
    .param p1, "c"    # Ljava/lang/String;

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 40
    iget-boolean v3, p0, Lcom/vkcoffee/android/data/RecentItemStore;->countUses:Z

    if-eqz v3, :cond_1

    .line 41
    iget-object v3, p0, Lcom/vkcoffee/android/data/RecentItemStore;->context:Landroid/content/Context;

    const-string/jumbo v4, "emoji"

    invoke-virtual {v3, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update_count_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/data/RecentItemStore;->prefsName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 42
    .local v2, "updateCount":I
    add-int/lit8 v2, v2, 0x1

    .line 43
    iget-object v3, p0, Lcom/vkcoffee/android/data/RecentItemStore;->context:Landroid/content/Context;

    const-string/jumbo v4, "emoji"

    invoke-virtual {v3, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update_count_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/data/RecentItemStore;->prefsName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 45
    if-lez v2, :cond_0

    rem-int/lit8 v3, v2, 0x5

    if-nez v3, :cond_0

    .line 46
    iget-object v3, p0, Lcom/vkcoffee/android/data/RecentItemStore;->useCounts:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 47
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 48
    .local v0, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/vkcoffee/android/data/RecentItemStore;->useCounts:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/vkcoffee/android/data/RecentItemStore;->useCounts:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const v6, 0x3fa66666    # 1.3f

    div-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 52
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/data/RecentItemStore;->useCounts:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 53
    iget-object v3, p0, Lcom/vkcoffee/android/data/RecentItemStore;->useCounts:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .end local v2    # "updateCount":I
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/vkcoffee/android/data/RecentItemStore;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 59
    iget-object v3, p0, Lcom/vkcoffee/android/data/RecentItemStore;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v7, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 65
    invoke-direct {p0}, Lcom/vkcoffee/android/data/RecentItemStore;->save()V

    .line 66
    return-void

    .line 55
    .restart local v2    # "updateCount":I
    :cond_2
    iget-object v4, p0, Lcom/vkcoffee/android/data/RecentItemStore;->useCounts:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/vkcoffee/android/data/RecentItemStore;->useCounts:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public load()[Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 122
    const/4 v2, 0x0

    .line 123
    .local v2, "data":[Ljava/lang/String;
    iget-object v9, p0, Lcom/vkcoffee/android/data/RecentItemStore;->context:Landroid/content/Context;

    const-string/jumbo v10, "emoji"

    invoke-virtual {v9, v10, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    iget-object v10, p0, Lcom/vkcoffee/android/data/RecentItemStore;->prefsName:Ljava/lang/String;

    const-string/jumbo v11, ""

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, "r":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    const-string/jumbo v9, "\t"

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 125
    const-string/jumbo v9, ","

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 126
    .local v6, "sp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 127
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 128
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    new-array v2, v9, [Ljava/lang/String;

    .line 129
    iget-object v9, p0, Lcom/vkcoffee/android/data/RecentItemStore;->useCounts:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 130
    const/4 v3, 0x0

    .line 131
    .local v3, "i":I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 132
    .local v5, "s":Ljava/lang/String;
    const-string/jumbo v10, "\t"

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 133
    .local v7, "ss":[Ljava/lang/String;
    aget-object v0, v7, v13

    .line 134
    .local v0, "code":Ljava/lang/String;
    array-length v10, v7

    if-le v10, v13, :cond_0

    .line 135
    aget-object v10, v7, v12

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 136
    .local v1, "count":F
    iget-object v10, p0, Lcom/vkcoffee/android/data/RecentItemStore;->useCounts:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v10, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .end local v1    # "count":F
    :cond_0
    iget-object v10, p0, Lcom/vkcoffee/android/data/RecentItemStore;->items:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    aput-object v0, v2, v3

    .line 140
    add-int/lit8 v3, v3, 0x1

    .line 141
    goto :goto_0

    .line 145
    .end local v0    # "code":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "sp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "ss":[Ljava/lang/String;
    :cond_1
    iget-boolean v9, p0, Lcom/vkcoffee/android/data/RecentItemStore;->countUses:Z

    if-nez v9, :cond_2

    .line 147
    :try_start_0
    iget-object v9, p0, Lcom/vkcoffee/android/data/RecentItemStore;->items:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 148
    const-string/jumbo v9, ","

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 149
    .restart local v6    # "sp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 150
    .restart local v5    # "s":Ljava/lang/String;
    iget-object v10, p0, Lcom/vkcoffee/android/data/RecentItemStore;->items:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 153
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "sp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v8

    .line 154
    .local v8, "x":Ljava/lang/Exception;
    const-string/jumbo v9, "vk"

    invoke-static {v9, v8}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    .end local v8    # "x":Ljava/lang/Exception;
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/data/RecentItemStore;->update()[Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 152
    .restart local v6    # "sp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    const-string/jumbo v9, "vk"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "LOADED "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/vkcoffee/android/data/RecentItemStore;->items:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public update()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 70
    iget-boolean v5, p0, Lcom/vkcoffee/android/data/RecentItemStore;->countUses:Z

    if-eqz v5, :cond_1

    .line 71
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v4, "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/RecentItemStore$RecentItem;>;"
    iget-object v5, p0, Lcom/vkcoffee/android/data/RecentItemStore;->useCounts:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 73
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 74
    .local v2, "key":Ljava/lang/String;
    new-instance v1, Lcom/vkcoffee/android/data/RecentItemStore$RecentItem;

    const/4 v5, 0x0

    invoke-direct {v1, p0, v5}, Lcom/vkcoffee/android/data/RecentItemStore$RecentItem;-><init>(Lcom/vkcoffee/android/data/RecentItemStore;Lcom/vkcoffee/android/data/RecentItemStore$1;)V

    .line 75
    .local v1, "i":Lcom/vkcoffee/android/data/RecentItemStore$RecentItem;
    iput-object v2, v1, Lcom/vkcoffee/android/data/RecentItemStore$RecentItem;->code:Ljava/lang/String;

    .line 76
    iget-object v5, p0, Lcom/vkcoffee/android/data/RecentItemStore;->useCounts:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iput v5, v1, Lcom/vkcoffee/android/data/RecentItemStore$RecentItem;->count:F

    .line 77
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    .end local v1    # "i":Lcom/vkcoffee/android/data/RecentItemStore$RecentItem;
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    new-instance v5, Lcom/vkcoffee/android/data/RecentItemStore$1;

    invoke-direct {v5, p0}, Lcom/vkcoffee/android/data/RecentItemStore$1;-><init>(Lcom/vkcoffee/android/data/RecentItemStore;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 88
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    .line 89
    .local v0, "data":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 90
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/data/RecentItemStore$RecentItem;

    iget-object v5, v5, Lcom/vkcoffee/android/data/RecentItemStore$RecentItem;->code:Ljava/lang/String;

    aput-object v5, v0, v1

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 93
    .end local v0    # "data":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/RecentItemStore$RecentItem;>;"
    :cond_1
    iget-object v5, p0, Lcom/vkcoffee/android/data/RecentItemStore;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    .line 94
    .restart local v0    # "data":[Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v5, v0

    if-ge v1, v5, :cond_2

    .line 95
    iget-object v5, p0, Lcom/vkcoffee/android/data/RecentItemStore;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v0, v1

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 99
    :cond_2
    return-object v0
.end method
