.class public Lcom/google/android/gms/internal/zzkj;
.super Ljava/lang/Object;


# direct methods
.method private static zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzpm$zzc;)Lcom/google/android/gms/appdatasearch/DocumentSection;
    .locals 3

    new-instance v0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzM(Z)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzbC(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;

    move-result-object v0

    const-string/jumbo v1, "blob"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzbB(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzmh()Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/appdatasearch/DocumentSection;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzsu;->toByteArray(Lcom/google/android/gms/internal/zzsu;)[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/appdatasearch/DocumentSection;-><init>([BLcom/google/android/gms/appdatasearch/RegisterSectionInfo;)V

    return-object v1
.end method

.method public static zza(Lcom/google/android/gms/appindexing/Action;JLjava/lang/String;I)Lcom/google/android/gms/appdatasearch/UsageInfo;
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/appindexing/Action;->zzmk()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string/jumbo v0, "object"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v0, "id"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "id"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "type"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "url"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {p3, v4}, Lcom/google/android/gms/internal/zzkk;->zza(Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4, v5, v0, v6, v1}, Lcom/google/android/gms/appdatasearch/UsageInfo;->zza(Landroid/content/Intent;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/gms/appdatasearch/DocumentContents$zza;

    move-result-object v1

    const-string/jumbo v0, ".private:ssbContext"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ".private:ssbContext"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/appdatasearch/DocumentSection;->zzh([B)Lcom/google/android/gms/appdatasearch/DocumentSection;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/appdatasearch/DocumentContents$zza;->zza(Lcom/google/android/gms/appdatasearch/DocumentSection;)Lcom/google/android/gms/appdatasearch/DocumentContents$zza;

    const-string/jumbo v0, ".private:ssbContext"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, ".private:accountName"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, ".private:accountName"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Landroid/accounts/Account;

    const-string/jumbo v6, "com.google"

    invoke-direct {v5, v0, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/appdatasearch/DocumentContents$zza;->zzb(Landroid/accounts/Account;)Lcom/google/android/gms/appdatasearch/DocumentContents$zza;

    const-string/jumbo v0, ".private:accountName"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v0, ".private:isContextOnly"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, ".private:isContextOnly"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    const-string/jumbo v5, ".private:isContextOnly"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_1
    const-string/jumbo v5, ".private:isDeviceOnly"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, ".private:isDeviceOnly"

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v5, ".private:isDeviceOnly"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v5, ".private:action"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzkj;->zzg(Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzpm$zzc;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/zzkj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzpm$zzc;)Lcom/google/android/gms/appdatasearch/DocumentSection;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/appdatasearch/DocumentContents$zza;->zza(Lcom/google/android/gms/appdatasearch/DocumentSection;)Lcom/google/android/gms/appdatasearch/DocumentContents$zza;

    new-instance v3, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;

    invoke-direct {v3}, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;-><init>()V

    invoke-static {p3, v4}, Lcom/google/android/gms/appdatasearch/UsageInfo;->zza(Ljava/lang/String;Landroid/content/Intent;)Lcom/google/android/gms/appdatasearch/DocumentId;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zza(Lcom/google/android/gms/appdatasearch/DocumentId;)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzw(J)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzar(I)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/gms/appdatasearch/DocumentContents$zza;->zzme()Lcom/google/android/gms/appdatasearch/DocumentContents;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zza(Lcom/google/android/gms/appdatasearch/DocumentContents;)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzO(Z)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzas(I)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzmi()Lcom/google/android/gms/appdatasearch/UsageInfo;

    move-result-object v0

    return-object v0

    :cond_3
    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method private static zzb(Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzpm$zzb;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzpm$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzpm$zzb;-><init>()V

    iput-object p0, v0, Lcom/google/android/gms/internal/zzpm$zzb;->name:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/zzpm$zzd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzpm$zzd;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzpm$zzb;->zzaMt:Lcom/google/android/gms/internal/zzpm$zzd;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzpm$zzb;->zzaMt:Lcom/google/android/gms/internal/zzpm$zzd;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzkj;->zzg(Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzpm$zzc;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/zzpm$zzd;->zzaMy:Lcom/google/android/gms/internal/zzpm$zzc;

    return-object v0
.end method

.method static zzg(Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzpm$zzc;
    .locals 8

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzkj;->zzp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzpm$zzb;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzkj;->zzb(Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzpm$zzb;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    instance-of v2, v1, [Ljava/lang/String;

    if-eqz v2, :cond_4

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    array-length v6, v1

    move v2, v3

    :goto_1
    if-ge v2, v6, :cond_0

    aget-object v7, v1, v2

    if-nez v7, :cond_3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v0, v7}, Lcom/google/android/gms/internal/zzkj;->zzp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzpm$zzb;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    instance-of v2, v1, [Landroid/os/Bundle;

    if-eqz v2, :cond_6

    check-cast v1, [Landroid/os/Bundle;

    check-cast v1, [Landroid/os/Bundle;

    array-length v6, v1

    move v2, v3

    :goto_3
    if-ge v2, v6, :cond_0

    aget-object v7, v1, v2

    if-nez v7, :cond_5

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    invoke-static {v0, v7}, Lcom/google/android/gms/internal/zzkj;->zzb(Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzpm$zzb;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_7

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzkj;->zzi(Ljava/lang/String;Z)Lcom/google/android/gms/internal/zzpm$zzb;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    const-string/jumbo v0, "SearchIndex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unsupported value: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    new-instance v1, Lcom/google/android/gms/internal/zzpm$zzc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzpm$zzc;-><init>()V

    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/zzpm$zzc;->type:Ljava/lang/String;

    :cond_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzpm$zzb;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzpm$zzb;

    iput-object v0, v1, Lcom/google/android/gms/internal/zzpm$zzc;->zzaMu:[Lcom/google/android/gms/internal/zzpm$zzb;

    return-object v1
.end method

.method private static zzi(Ljava/lang/String;Z)Lcom/google/android/gms/internal/zzpm$zzb;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzpm$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzpm$zzb;-><init>()V

    iput-object p0, v0, Lcom/google/android/gms/internal/zzpm$zzb;->name:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/zzpm$zzd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzpm$zzd;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzpm$zzb;->zzaMt:Lcom/google/android/gms/internal/zzpm$zzd;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzpm$zzb;->zzaMt:Lcom/google/android/gms/internal/zzpm$zzd;

    iput-boolean p1, v1, Lcom/google/android/gms/internal/zzpm$zzd;->zzaMv:Z

    return-object v0
.end method

.method private static zzp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzpm$zzb;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzpm$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzpm$zzb;-><init>()V

    iput-object p0, v0, Lcom/google/android/gms/internal/zzpm$zzb;->name:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/zzpm$zzd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzpm$zzd;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzpm$zzb;->zzaMt:Lcom/google/android/gms/internal/zzpm$zzd;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzpm$zzb;->zzaMt:Lcom/google/android/gms/internal/zzpm$zzd;

    iput-object p1, v1, Lcom/google/android/gms/internal/zzpm$zzd;->zzamJ:Ljava/lang/String;

    return-object v0
.end method
