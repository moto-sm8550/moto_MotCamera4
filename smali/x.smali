.class public final Lx;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static final g:Laf;


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Ljava/util/List;

.field public e:Laf;

.field public f:Z

.field private final h:Landroid/content/pm/PackageManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "com.google.android.googlequicksearchbox.GsaPublicContentProvider"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "content://%s/publicvalue/lens_oem_availability"

    .line 1
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lx;->a:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "com.google.vr.apps.ornament.app.lens.StickersAvailabilityProvider"

    aput-object v1, v0, v3

    const-string v1, "content://%s/publicvalue/stickers_oem_availability"

    .line 2
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lx;->b:Ljava/lang/String;

    .line 3
    invoke-static {}, Laf;->d()Lby$b;

    move-result-object v0

    const-string v1, "1.1.0"

    .line 4
    invoke-virtual {v0, v1}, Lby$b;->a(Ljava/lang/String;)Lby$b;

    move-result-object v0

    const-string v1, ""

    .line 5
    invoke-virtual {v0, v1}, Lby$b;->b(Ljava/lang/String;)Lby$b;

    move-result-object v0

    sget-object v1, Laf$a;->a:Laf$a;

    .line 6
    invoke-virtual {v0, v1}, Lby$b;->a(Laf$a;)Lby$b;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v1}, Lby$b;->b(Laf$a;)Lby$b;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lby$b;->f()Ldh;

    move-result-object v0

    check-cast v0, Lby;

    check-cast v0, Laf;

    sput-object v0, Lx;->g:Laf;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lx;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "packageManager"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lx;->d:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lx;->c:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lx;->h:Landroid/content/pm/PackageManager;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lx;->f:Z

    .line 7
    sget-object v0, Lx;->g:Laf;

    iput-object v0, p0, Lx;->e:Laf;

    :try_start_0
    const-string v1, "com.google.android.googlequicksearchbox"

    .line 8
    invoke-virtual {p2, v1, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 9
    sget v1, Lby$e;->e:I

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Laf;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 11
    check-cast v1, Lby$b;

    .line 12
    invoke-virtual {v1, v0}, Lby$b;->a(Lby;)Lby$b;

    .line 13
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Lby$b;->b(Ljava/lang/String;)Lby$b;

    move-result-object p2

    invoke-virtual {p2}, Lby$b;->f()Ldh;

    move-result-object p2

    check-cast p2, Lby;

    check-cast p2, Laf;

    iput-object p2, p0, Lx;->e:Laf;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "LensSdkParamsReader"

    const-string v0, "Unable to find agsa package: com.google.android.googlequicksearchbox"

    .line 14
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_0
    :goto_0
    new-instance p2, Lz;

    .line 16
    invoke-direct {p2, p0}, Lz;-><init>(Lx;)V

    new-array p0, p1, [Ljava/lang/Void;

    .line 17
    invoke-virtual {p2, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public final a(Laa;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lx;->f:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lx;->e:Laf;

    invoke-interface {p1, p0}, Laa;->a(Laf;)V

    return-void

    .line 3
    :cond_0
    iget-object p0, p0, Lx;->d:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
