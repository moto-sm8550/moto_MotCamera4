.class final Lag;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcf;


# static fields
.field public static final a:Lcf;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lag;

    invoke-direct {v0}, Lag;-><init>()V

    sput-object v0, Lag;->a:Lcf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    invoke-static {p1}, Laf$a;->a(I)Laf$a;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
