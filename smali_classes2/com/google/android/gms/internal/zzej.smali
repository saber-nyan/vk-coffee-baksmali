.class public Lcom/google/android/gms/internal/zzej;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzei;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private final zzBx:Lcom/google/android/gms/internal/zzeh;

.field private final zzBy:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/util/AbstractMap$SimpleEntry",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzdf;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzeh;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzej;->zzBx:Lcom/google/android/gms/internal/zzeh;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzej;->zzBy:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdf;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzej;->zzBx:Lcom/google/android/gms/internal/zzeh;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzeh;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdf;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzej;->zzBy:Ljava/util/HashSet;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v1, p1, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzej;->zzBx:Lcom/google/android/gms/internal/zzeh;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzeh;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzdf;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzej;->zzBx:Lcom/google/android/gms/internal/zzeh;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzeh;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzdf;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzej;->zzBy:Ljava/util/HashSet;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v1, p1, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzej;->zzBx:Lcom/google/android/gms/internal/zzeh;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzeh;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public zze(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzej;->zzBx:Lcom/google/android/gms/internal/zzeh;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzeh;->zze(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public zzew()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzej;->zzBy:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/AbstractMap$SimpleEntry;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unregistering eventhandler: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzdf;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzin;->v(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzej;->zzBx:Lcom/google/android/gms/internal/zzeh;

    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdf;

    invoke-interface {v3, v1, v0}, Lcom/google/android/gms/internal/zzeh;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzdf;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzej;->zzBy:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method
