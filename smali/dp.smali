.class public Ldp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lac;


# instance fields
.field public final a:Lcom/google/lens/sdk/LensApi;

.field public final b:Lam;

.field public final c:J

.field public final d:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/google/lens/sdk/LensApi;Lam;JLandroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldp;->a:Lcom/google/lens/sdk/LensApi;

    iput-object p2, p0, Ldp;->b:Lam;

    iput-wide p3, p0, Ldp;->c:J

    iput-object p5, p0, Ldp;->d:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public a(Laf$a;)V
    .locals 5

    .line 1
    iget-object v0, p0, Ldp;->a:Lcom/google/lens/sdk/LensApi;

    iget-object v1, p0, Ldp;->b:Lam;

    iget-wide v2, p0, Ldp;->c:J

    iget-object p0, p0, Ldp;->d:Landroid/app/Activity;

    .line 2
    sget-object v4, Laf$a;->b:Laf$a;

    if-ne p1, v4, :cond_0

    .line 3
    invoke-virtual {v1}, Lam;->b()Lao;

    move-result-object p0

    .line 4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lao;->a(Ljava/lang/Long;)Lao;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lao;->a()Lam;

    move-result-object p0

    .line 6
    invoke-virtual {v0, p0}, Lcom/google/lens/sdk/LensApi;->a(Lam;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {v0, p0}, Lcom/google/lens/sdk/LensApi;->a(Landroid/app/Activity;)V

    return-void
.end method
