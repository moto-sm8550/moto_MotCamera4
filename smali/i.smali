.class public final Li;
.super La;
.source "PG"

# interfaces
.implements Lf;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remote"
        }
    .end annotation

    const-string v0, "com.google.android.apps.gsa.publicsearch.IPublicSearchServiceSession"

    invoke-direct {p0, p1, v0}, La;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serializedClientEvent"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, La;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1, v0}, La;->b(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a([BLj;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serializedClientEvent",
            "systemParcelableWrapper"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, La;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6
    invoke-static {v0, p2}, Lb;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x2

    .line 7
    invoke-virtual {p0, p1, v0}, La;->b(ILandroid/os/Parcel;)V

    return-void
.end method
