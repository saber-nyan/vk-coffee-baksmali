.class Lcom/google/android/gms/measurement/internal/zzae;
.super Ljava/lang/Object;


# instance fields
.field final zzaXg:Z

.field final zzaZh:I

.field final zzaZi:Z

.field final zzaZj:Ljava/lang/String;

.field final zzaZk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final zzaZl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpz$zzf;)V
    .locals 6

    const/4 v5, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzpz$zzf;->zzaZN:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/google/android/gms/internal/zzpz$zzf;->zzaZN:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    move v3, v0

    :goto_0
    if-eqz v3, :cond_9

    iget-object v4, p1, Lcom/google/android/gms/internal/zzpz$zzf;->zzaZN:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/google/android/gms/measurement/internal/zzae;->zzaZh:I

    iget-object v4, p1, Lcom/google/android/gms/internal/zzpz$zzf;->zzaZP:Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/google/android/gms/internal/zzpz$zzf;->zzaZP:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzae;->zzaZi:Z

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzae;->zzaZi:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzae;->zzaZh:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzae;->zzaZh:I

    if-ne v0, v5, :cond_6

    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/internal/zzpz$zzf;->zzaZO:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzae;->zzaZj:Ljava/lang/String;

    :goto_1
    iget-object v0, p1, Lcom/google/android/gms/internal/zzpz$zzf;->zzaZQ:[Ljava/lang/String;

    if-nez v0, :cond_7

    move-object v0, v2

    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzae;->zzaZk:Ljava/util/List;

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzae;->zzaZh:I

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzae;->zzaZj:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzae;->zzaZl:Ljava/lang/String;

    :goto_3
    iput-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzae;->zzaXg:Z

    return-void

    :cond_3
    iget-object v3, p1, Lcom/google/android/gms/internal/zzpz$zzf;->zzaZN:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v5, :cond_5

    iget-object v3, p1, Lcom/google/android/gms/internal/zzpz$zzf;->zzaZQ:[Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/google/android/gms/internal/zzpz$zzf;->zzaZQ:[Ljava/lang/String;

    array-length v3, v3

    if-nez v3, :cond_a

    :cond_4
    move v3, v0

    goto :goto_0

    :cond_5
    iget-object v3, p1, Lcom/google/android/gms/internal/zzpz$zzf;->zzaZO:Ljava/lang/String;

    if-nez v3, :cond_a

    move v3, v0

    goto :goto_0

    :cond_6
    iget-object v0, p1, Lcom/google/android/gms/internal/zzpz$zzf;->zzaZO:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzae;->zzaZj:Ljava/lang/String;

    goto :goto_1

    :cond_7
    iget-object v0, p1, Lcom/google/android/gms/internal/zzpz$zzf;->zzaZQ:[Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/gms/measurement/internal/zzae;->zzaZi:Z

    invoke-direct {p0, v0, v4}, Lcom/google/android/gms/measurement/internal/zzae;->zza([Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_8
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzae;->zzaZl:Ljava/lang/String;

    goto :goto_3

    :cond_9
    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzae;->zzaZh:I

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzae;->zzaZi:Z

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzae;->zzaZj:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzae;->zzaZk:Ljava/util/List;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzae;->zzaZl:Ljava/lang/String;

    goto :goto_3

    :cond_a
    move v3, v1

    goto :goto_0
.end method

.method private zza([Ljava/lang/String;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public zzfp(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzae;->zzaXg:Z

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzae;->zzaZi:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzae;->zzaZh:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    :cond_1
    :goto_1
    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzae;->zzaZh:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzae;->zzaZi:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzae;->zzaZl:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/16 v0, 0x42

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzae;->zzaZj:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzae;->zzaZj:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzae;->zzaZj:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzae;->zzaZj:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzae;->zzaZk:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
