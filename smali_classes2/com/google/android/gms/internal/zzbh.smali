.class public Lcom/google/android/gms/internal/zzbh;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbh$zza;
    }
.end annotation


# instance fields
.field private final zztp:I

.field private final zztq:I

.field private final zztr:I

.field private final zzts:Lcom/google/android/gms/internal/zzbg;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzbj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbh;->zzts:Lcom/google/android/gms/internal/zzbg;

    iput p1, p0, Lcom/google/android/gms/internal/zzbh;->zztq:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/gms/internal/zzbh;->zztp:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzbh;->zztr:I

    return-void
.end method

.method private zzv(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbh;->zzcM()Lcom/google/android/gms/internal/zzbh$zza;

    move-result-object v2

    new-instance v0, Lcom/google/android/gms/internal/zzbh$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbh$1;-><init>(Lcom/google/android/gms/internal/zzbh;)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    iget v3, p0, Lcom/google/android/gms/internal/zzbh;->zztq:I

    if-ge v0, v3, :cond_2

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzbh;->zzts:Lcom/google/android/gms/internal/zzbg;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzbg;->zzu(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzbh$zza;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Error while writing hash to byteStream"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzin;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbh$zza;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public zza(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzbh;->zztr:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, ""

    :goto_1
    return-object v0

    :pswitch_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbh;->zzw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbh;->zzv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method zzcM()Lcom/google/android/gms/internal/zzbh$zza;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbh$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbh$zza;-><init>()V

    return-object v0
.end method

.method zzw(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string/jumbo v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbh;->zzcM()Lcom/google/android/gms/internal/zzbh$zza;

    move-result-object v2

    new-instance v3, Ljava/util/PriorityQueue;

    iget v0, p0, Lcom/google/android/gms/internal/zzbh;->zztq:I

    new-instance v4, Lcom/google/android/gms/internal/zzbh$2;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzbh$2;-><init>(Lcom/google/android/gms/internal/zzbh;)V

    invoke-direct {v3, v0, v4}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_2

    aget-object v4, v1, v0

    invoke-static {v4}, Lcom/google/android/gms/internal/zzbi;->zzy(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-nez v5, :cond_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v5, p0, Lcom/google/android/gms/internal/zzbh;->zztq:I

    iget v6, p0, Lcom/google/android/gms/internal/zzbh;->zztp:I

    invoke-static {v4, v5, v6, v3}, Lcom/google/android/gms/internal/zzbk;->zza([Ljava/lang/String;IILjava/util/PriorityQueue;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbk$zza;

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzbh;->zzts:Lcom/google/android/gms/internal/zzbg;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbk$zza;->zztx:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzbg;->zzu(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzbh$zza;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Error while writing hash to byteStream"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzin;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbh$zza;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
