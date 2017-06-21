.class public Lcom/vkcoffee/android/fragments/friends/SearchIndexer;
.super Ljava/lang/Object;
.source "SearchIndexer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/friends/SearchIndexer$Provider;,
        Lcom/vkcoffee/android/fragments/friends/SearchIndexer$SimpleProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mIndex:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mProvider:Lcom/vkcoffee/android/fragments/friends/SearchIndexer$Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/fragments/friends/SearchIndexer$Provider",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/friends/SearchIndexer$Provider;)V
    .locals 1
    .param p1    # Lcom/vkcoffee/android/fragments/friends/SearchIndexer$Provider;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/fragments/friends/SearchIndexer$Provider",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/vkcoffee/android/fragments/friends/SearchIndexer;, "Lcom/vkcoffee/android/fragments/friends/SearchIndexer<TT;>;"
    .local p1, "provider":Lcom/vkcoffee/android/fragments/friends/SearchIndexer$Provider;, "Lcom/vkcoffee/android/fragments/friends/SearchIndexer$Provider<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->mLock:Ljava/lang/Object;

    .line 19
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->mIndex:Landroid/util/SparseArray;

    .line 23
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->mProvider:Lcom/vkcoffee/android/fragments/friends/SearchIndexer$Provider;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/friends/SearchIndexer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/friends/SearchIndexer;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/friends/SearchIndexer;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/friends/SearchIndexer;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->mIndex:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/friends/SearchIndexer;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/friends/SearchIndexer;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->mData:Ljava/util/List;

    return-object v0
.end method

.method private static engToRus(Ljava/lang/String;ILjava/lang/StringBuilder;)I
    .locals 6
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "position"    # I
    .param p2, "to"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v5, 0x68

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 265
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 266
    .local v0, "character":C
    packed-switch v0, :pswitch_data_0

    .line 363
    :pswitch_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 364
    :goto_0
    return v1

    .line 268
    :pswitch_1
    const/16 v2, 0x430

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 271
    :pswitch_2
    const/16 v2, 0x431

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 274
    :pswitch_3
    const/16 v2, 0x432

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 277
    :pswitch_4
    const/16 v2, 0x433

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 280
    :pswitch_5
    const/16 v2, 0x434

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 283
    :pswitch_6
    const/16 v2, 0x435

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 286
    :pswitch_7
    const/16 v2, 0x438

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 289
    :pswitch_8
    const/16 v2, 0x439

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 292
    :pswitch_9
    const/16 v2, 0x43a

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 295
    :pswitch_a
    const/16 v2, 0x43b

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 298
    :pswitch_b
    const/16 v2, 0x43c

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 301
    :pswitch_c
    const/16 v2, 0x43d

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 304
    :pswitch_d
    const/16 v2, 0x43e

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 307
    :pswitch_e
    const/16 v2, 0x43f

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 310
    :pswitch_f
    const/16 v2, 0x440

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 313
    :pswitch_10
    const/16 v2, 0x442

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 316
    :pswitch_11
    const/16 v2, 0x443

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 319
    :pswitch_12
    const/16 v2, 0x444

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 322
    :pswitch_13
    const/16 v2, 0x445

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 325
    :pswitch_14
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 326
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x75

    if-ne v3, v4, :cond_0

    .line 327
    const/16 v1, 0x44e

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    .line 328
    goto/16 :goto_0

    .line 330
    :cond_0
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x61

    if-ne v3, v4, :cond_1

    .line 331
    const/16 v1, 0x44f

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    .line 332
    goto/16 :goto_0

    .line 335
    :cond_1
    const/16 v2, 0x44b

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 338
    :pswitch_15
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_2

    .line 339
    const/16 v1, 0x448

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    .line 340
    goto/16 :goto_0

    .line 342
    :cond_2
    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x63

    if-ne v2, v3, :cond_3

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_3

    .line 343
    const/16 v1, 0x449

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 344
    const/4 v1, 0x3

    goto/16 :goto_0

    .line 346
    :cond_3
    const/16 v2, 0x441

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 349
    :pswitch_16
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_4

    .line 350
    const/16 v1, 0x436

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    .line 351
    goto/16 :goto_0

    .line 353
    :cond_4
    const/16 v2, 0x437

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 356
    :pswitch_17
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_5

    .line 357
    const/16 v1, 0x447

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    .line 358
    goto/16 :goto_0

    .line 360
    :cond_5
    const/16 v2, 0x446

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_1
        :pswitch_2
        :pswitch_17
        :pswitch_5
        :pswitch_6
        :pswitch_12
        :pswitch_4
        :pswitch_13
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_15
        :pswitch_10
        :pswitch_11
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_16
    .end packed-switch
.end method

.method private static rusToEng(CLjava/lang/StringBuilder;)V
    .locals 1
    .param p0, "character"    # C
    .param p1, "to"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v0, 0x65

    .line 164
    packed-switch p0, :pswitch_data_0

    .line 260
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    :goto_0
    :pswitch_0
    return-void

    .line 166
    :pswitch_1
    const-string/jumbo v0, "sch"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 169
    :pswitch_2
    const-string/jumbo v0, "zh"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 172
    :pswitch_3
    const-string/jumbo v0, "ch"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 175
    :pswitch_4
    const-string/jumbo v0, "sh"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 178
    :pswitch_5
    const-string/jumbo v0, "yu"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 181
    :pswitch_6
    const-string/jumbo v0, "ya"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 184
    :pswitch_7
    const/16 v0, 0x61

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 187
    :pswitch_8
    const/16 v0, 0x62

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 190
    :pswitch_9
    const/16 v0, 0x76

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 193
    :pswitch_a
    const/16 v0, 0x67

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 196
    :pswitch_b
    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 199
    :pswitch_c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 202
    :pswitch_d
    const/16 v0, 0x7a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 205
    :pswitch_e
    const/16 v0, 0x69

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 208
    :pswitch_f
    const/16 v0, 0x6a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 211
    :pswitch_10
    const/16 v0, 0x6b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 214
    :pswitch_11
    const/16 v0, 0x6c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 217
    :pswitch_12
    const/16 v0, 0x6d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 220
    :pswitch_13
    const/16 v0, 0x6e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 223
    :pswitch_14
    const/16 v0, 0x6f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 226
    :pswitch_15
    const/16 v0, 0x70

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 229
    :pswitch_16
    const/16 v0, 0x72

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 232
    :pswitch_17
    const/16 v0, 0x73

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 235
    :pswitch_18
    const/16 v0, 0x74

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 238
    :pswitch_19
    const/16 v0, 0x75

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 241
    :pswitch_1a
    const/16 v0, 0x66

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 244
    :pswitch_1b
    const/16 v0, 0x68

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 247
    :pswitch_1c
    const/16 v0, 0x63

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 250
    :pswitch_1d
    const/16 v0, 0x79

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 253
    :pswitch_1e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x430
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_2
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_1d
        :pswitch_0
        :pswitch_1e
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private search(Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lcom/vkcoffee/android/fragments/friends/SearchIndexer;, "Lcom/vkcoffee/android/fragments/friends/SearchIndexer<TT;>;"
    .local p2, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->mProvider:Lcom/vkcoffee/android/fragments/friends/SearchIndexer$Provider;

    if-eqz v4, :cond_0

    .line 107
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 108
    .local v0, "firstChar":C
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 109
    :try_start_0
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->mIndex:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 110
    .local v3, "m":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez v3, :cond_1

    .line 111
    monitor-exit v5

    .line 130
    .end local v0    # "firstChar":C
    .end local v3    # "m":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    :goto_0
    return-void

    .line 113
    .restart local v0    # "firstChar":C
    .restart local v3    # "m":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    .line 114
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 115
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 116
    .local v2, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 117
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 121
    .end local v1    # "i":I
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 122
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 123
    .restart local v2    # "item":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->mProvider:Lcom/vkcoffee/android/fragments/friends/SearchIndexer$Provider;

    invoke-interface {v4, p1, v2}, Lcom/vkcoffee/android/fragments/friends/SearchIndexer$Provider;->matches(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 124
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 128
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    :cond_5
    monitor-exit v5

    goto :goto_0

    .end local v1    # "i":I
    .end local v3    # "m":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private static translitToEng(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 371
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v1}, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->rusToEng(CLjava/lang/StringBuilder;)V

    .line 370
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 373
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static translitToRus(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 379
    invoke-static {p0, v0, v1}, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->engToRus(Ljava/lang/String;ILjava/lang/StringBuilder;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 381
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/vkcoffee/android/fragments/friends/SearchIndexer;, "Lcom/vkcoffee/android/fragments/friends/SearchIndexer<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->mProvider:Lcom/vkcoffee/android/fragments/friends/SearchIndexer$Provider;

    if-eqz v4, :cond_2

    .line 61
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->mProvider:Lcom/vkcoffee/android/fragments/friends/SearchIndexer$Provider;

    invoke-interface {v4, p1}, Lcom/vkcoffee/android/fragments/friends/SearchIndexer$Provider;->getIndexChar(Ljava/lang/Object;)[C

    move-result-object v1

    .line 63
    .local v1, "chars":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_2

    .line 64
    aget-char v0, v1, v2

    .line 66
    .local v0, "c":C
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->mIndex:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 67
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez v3, :cond_0

    .line 68
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .restart local v3    # "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->mIndex:Landroid/util/SparseArray;

    invoke-virtual {v4, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    :cond_0
    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 74
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "c":C
    .end local v1    # "chars":[C
    .end local v2    # "i":I
    .end local v3    # "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_2
    return-void
.end method

.method public bind(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/vkcoffee/android/fragments/friends/SearchIndexer;, "Lcom/vkcoffee/android/fragments/friends/SearchIndexer<TT;>;"
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->mData:Ljava/util/List;

    .line 31
    return-void
.end method

.method public build()V
    .locals 2

    .prologue
    .line 38
    .local p0, "this":Lcom/vkcoffee/android/fragments/friends/SearchIndexer;, "Lcom/vkcoffee/android/fragments/friends/SearchIndexer<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->mData:Ljava/util/List;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Object list is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/fragments/friends/SearchIndexer$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/friends/SearchIndexer$1;-><init>(Lcom/vkcoffee/android/fragments/friends/SearchIndexer;)V

    .line 51
    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/friends/SearchIndexer$1;->start()V

    .line 52
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 133
    .local p0, "this":Lcom/vkcoffee/android/fragments/friends/SearchIndexer;, "Lcom/vkcoffee/android/fragments/friends/SearchIndexer<TT;>;"
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->mIndex:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->mData:Ljava/util/List;

    .line 136
    monitor-exit v1

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method synthetic lambda$search$351(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .param p2, "lhs"    # Ljava/lang/Object;
    .param p3, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 96
    .local p0, "this":Lcom/vkcoffee/android/fragments/friends/SearchIndexer;, "Lcom/vkcoffee/android/fragments/friends/SearchIndexer<TT;>;"
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->mProvider:Lcom/vkcoffee/android/fragments/friends/SearchIndexer$Provider;

    invoke-interface {v2, p1, p2}, Lcom/vkcoffee/android/fragments/friends/SearchIndexer$Provider;->priority(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v0

    .line 97
    .local v0, "left":I
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->mProvider:Lcom/vkcoffee/android/fragments/friends/SearchIndexer$Provider;

    invoke-interface {v2, p1, p3}, Lcom/vkcoffee/android/fragments/friends/SearchIndexer$Provider;->priority(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v1

    .line 98
    .local v1, "right":I
    if-le v0, v1, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    if-ne v0, v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public search(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lcom/vkcoffee/android/fragments/friends/SearchIndexer;, "Lcom/vkcoffee/android/fragments/friends/SearchIndexer<TT;>;"
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "finalQuery":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {v0}, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->translitToRus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->search(Ljava/lang/String;Ljava/util/List;)V

    .line 92
    invoke-static {v0}, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->translitToEng(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->search(Ljava/lang/String;Ljava/util/List;)V

    .line 94
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->mProvider:Lcom/vkcoffee/android/fragments/friends/SearchIndexer$Provider;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->mProvider:Lcom/vkcoffee/android/fragments/friends/SearchIndexer$Provider;

    invoke-interface {v2}, Lcom/vkcoffee/android/fragments/friends/SearchIndexer$Provider;->hasPriority()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    invoke-static {p0, v0}, Lcom/vkcoffee/android/fragments/friends/SearchIndexer$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/friends/SearchIndexer;Ljava/lang/String;)Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 102
    :cond_0
    return-object v1
.end method
