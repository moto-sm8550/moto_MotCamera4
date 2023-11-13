.class public final Lcom/google/android/gms/common/api/internal/zacr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zaa:Lcom/google/android/gms/signin/internal/zak;

.field public final synthetic zab:Lcom/google/android/gms/common/api/internal/zact;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zact;Lcom/google/android/gms/signin/internal/zak;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacr;->zab:Lcom/google/android/gms/common/api/internal/zact;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zacr;->zaa:Lcom/google/android/gms/signin/internal/zak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacr;->zab:Lcom/google/android/gms/common/api/internal/zact;

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zacr;->zaa:Lcom/google/android/gms/signin/internal/zak;

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/signin/internal/zak;->zab:Lcom/google/android/gms/common/ConnectionResult;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    iget-object p0, p0, Lcom/google/android/gms/signin/internal/zak;->zac:Lcom/google/android/gms/common/internal/zav;

    const-string v1, "null reference"

    .line 5
    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zav;->zac:Lcom/google/android/gms/common/ConnectionResult;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    const-string v3, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "SignInCoordinator"

    invoke-static {v3, p0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/zact;->zah:Lcom/google/android/gms/common/api/internal/zacs;

    .line 9
    check-cast p0, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/internal/zabu;->zae(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/zact;->zag:Lcom/google/android/gms/signin/zae;

    .line 10
    check-cast p0, Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    goto :goto_2

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/zact;->zah:Lcom/google/android/gms/common/api/internal/zacs;

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zav;->zab()Lcom/google/android/gms/common/internal/IAccountAccessor;

    move-result-object p0

    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/zact;->zae:Ljava/util/Set;

    check-cast v1, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    iput-object p0, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Lcom/google/android/gms/common/internal/IAccountAccessor;

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zae:Ljava/util/Set;

    .line 13
    iget-boolean v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    if-eqz v3, :cond_4

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Lcom/google/android/gms/common/api/Api$Client;

    invoke-interface {v1, p0, v2}, Lcom/google/android/gms/common/api/Api$Client;->getRemoteService(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    goto :goto_1

    .line 14
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string v2, "GoogleApiManager"

    const-string v3, "Received null response from onSignInSuccess"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    new-instance p0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 16
    invoke-direct {p0, v2, v3, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/api/internal/zabu;->zae(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_1

    .line 18
    :cond_3
    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/zact;->zah:Lcom/google/android/gms/common/api/internal/zacs;

    .line 19
    check-cast p0, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/internal/zabu;->zae(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 20
    :cond_4
    :goto_1
    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/zact;->zag:Lcom/google/android/gms/signin/zae;

    .line 21
    check-cast p0, Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    :goto_2
    return-void
.end method
