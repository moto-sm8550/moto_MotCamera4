.class public Lcom/google/android/play/core/appupdate/internal/zzb;
.super Landroid/os/Binder;
.source "com.google.android.play:app-update@@2.0.0"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.android.play.core.appupdate.protocol.IAppUpdateServiceCallback"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const v1, 0xffffff

    if-le p1, v1, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p3

    if-eqz p3, :cond_1

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3
    :cond_1
    check-cast p0, Lcom/google/android/play/core/appupdate/internal/zzg;

    const/4 p3, 0x2

    const/4 p4, 0x0

    if-eq p1, p3, :cond_4

    const/4 p3, 0x3

    if-eq p1, p3, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    .line 4
    :cond_2
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5
    sget p3, Lcom/google/android/play/core/appupdate/internal/zzc;->$r8$clinit:I

    .line 6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-nez p3, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object p4, p1

    check-cast p4, Landroid/os/Parcelable;

    .line 8
    :goto_0
    check-cast p4, Landroid/os/Bundle;

    .line 9
    invoke-static {p2}, Lcom/google/android/play/core/appupdate/internal/zzc;->zzb(Landroid/os/Parcel;)V

    .line 10
    invoke-interface {p0, p4}, Lcom/google/android/play/core/appupdate/internal/zzh;->zzb(Landroid/os/Bundle;)V

    goto :goto_2

    .line 11
    :cond_4
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    sget p3, Lcom/google/android/play/core/appupdate/internal/zzc;->$r8$clinit:I

    .line 12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-nez p3, :cond_5

    goto :goto_1

    .line 13
    :cond_5
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object p4, p1

    check-cast p4, Landroid/os/Parcelable;

    .line 14
    :goto_1
    check-cast p4, Landroid/os/Bundle;

    .line 15
    invoke-static {p2}, Lcom/google/android/play/core/appupdate/internal/zzc;->zzb(Landroid/os/Parcel;)V

    .line 16
    invoke-interface {p0, p4}, Lcom/google/android/play/core/appupdate/internal/zzh;->zzc(Landroid/os/Bundle;)V

    :goto_2
    return v0
.end method
