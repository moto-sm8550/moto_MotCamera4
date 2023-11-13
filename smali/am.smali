.class public final Lam;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field public b:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lao;
    .locals 1

    .line 1
    new-instance v0, Lao;

    .line 2
    invoke-direct {v0}, Lao;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final b()Lao;
    .locals 1

    .line 1
    new-instance v0, Lao;

    .line 2
    invoke-direct {v0, p0}, Lao;-><init>(Lam;)V

    return-object v0
.end method
